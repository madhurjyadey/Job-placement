// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleJobPlacement {

    struct Job {
        uint jobId;
        address employer;
        string title;
        uint compensation;
        address candidate;
        bool isCompleted;
    }

    uint public jobCounter = 0;
    mapping(uint => Job) public jobs;

    // Event for job posting
    event JobPosted(uint jobId, address employer, string title, uint compensation);
    
    // Event for job application
    event JobApplied(uint jobId, address candidate);
    
    // Event for payment release
    event PaymentReleased(uint jobId, address employer, address candidate, uint compensation);

    // Function to post a job
    function postJob(string memory _title, uint _compensation) public {
        jobCounter++;
        jobs[jobCounter] = Job(jobCounter, msg.sender, _title, _compensation, address(0), false);
        emit JobPosted(jobCounter, msg.sender, _title, _compensation);
    }

    // Function for a candidate to apply for a job
    function applyForJob(uint _jobId) public {
        Job storage job = jobs[_jobId];
        require(job.candidate == address(0), "Job already taken.");
        job.candidate = msg.sender;
        emit JobApplied(_jobId, msg.sender);
    }

    // Function for employer to release payment
    function releasePayment(uint _jobId) public payable {
        Job storage job = jobs[_jobId];
        require(msg.sender == job.employer, "Only employer can release payment.");
        require(job.candidate != address(0), "No candidate to pay.");
        require(!job.isCompleted, "Job is already completed.");
        require(msg.value == job.compensation, "Incorrect compensation amount.");
        
        job.isCompleted = true;
        payable(job.candidate).transfer(job.compensation);
        emit PaymentReleased(_jobId, job.employer, job.candidate, job.compensation);
    }
}


# Simple Job Placement Smart Contract

![image](https://github.com/user-attachments/assets/57c50f1c-b7bd-410a-adf1-1e0105001907)

## Vision
The Simple Job Placement Smart Contract aims to create a decentralized platform where employers can easily post jobs and candidates can apply for them. It ensures transparent and secure job placement and payment processes on the Ethereum blockchain. By leveraging smart contracts, the project eliminates intermediaries, reduces costs, and guarantees that payments are made only after job completion, thereby fostering trust between employers and candidates.

## How It Works
1. **Employer Posts a Job**: 
   - The employer posts a job by providing a title and the compensation amount.
   - The job is assigned a unique ID and is made available for candidates to apply.

2. **Candidate Applies for a Job**:
   - Interested candidates can apply for a job by submitting their application using the job’s unique ID.
   - The first candidate to apply gets assigned to the job.

3. **Employer Releases Payment**:
   - Once the job is completed, the employer can release payment directly to the candidate.
   - The contract ensures that payment is only released if the job has been assigned and the correct amount is provided.

## Flowchart

```plaintext
+---------------------+        +--------------------+         +------------------+
|   Employer Posts    | -----> |  Candidate Applies | ----->  | Employer Releases |
|      a Job          |        |    for the Job     |         |     Payment       |
+---------------------+        +--------------------+         +------------------+
| Title & Compensation|        | Job ID             |         | Job ID & Payment  |
+---------------------+        +--------------------+         +------------------+
```

## Contract Address
The smart contract is deployed on the Ethereum testnet (Rinkeby, Goerli, etc.). Please refer to the deployed contract address below:

- **Contract Address**: 0x074030ffbcf345fc3711d06458a4341febe1173b

  ![image](https://github.com/user-attachments/assets/f01a903a-f677-4688-a5b8-437c7451854d)


## Future Scope
- **Multi-Application Support**: Allow multiple candidates to apply for a job and enable the employer to choose the best fit.
- **Job Escrow**: Introduce an escrow mechanism to hold funds until the job is confirmed as completed by both parties.
- **Reputation System**: Implement a reputation system for employers and candidates based on past job performance and reliability.
- **Feedback and Dispute Resolution**: Add features for leaving feedback and resolving disputes between employers and candidates.

## Contact Information
If you have any questions or suggestions regarding this project, feel free to reach out.

- **Developer**: Madhurjya Dey
- **Email**: madhurjyadey45@gmail.com
- **GitHub**: https://github.com/madhurjyadey


## Harbour Books – CI/CD Deployment Submission

**GitHub Repository:**  
https://github.com/angeldack50/harbour-books

### Implementation Summary

I implemented an automated CI/CD pipeline for Harbour Books using GitHub Actions, AWS IAM OIDC authentication, Amazon ECR, Docker and AWS Systems Manager (SSM).

The pipeline includes a reusable GitHub Actions deployment workflow, Makefile targets for linting, building and pushing Docker images, and automated deployment to an EC2 instance through SSM.

I successfully tested the deployment pipeline and verified that the application was running.

### Security and Testing

- Configured GitHub Actions to authenticate with AWS using OIDC rather than long-lived AWS access keys.
- Restricted SSM deployment permissions to the designated EC2 instance.
- Tested an OIDC permission failure by removing `id-token: write`, then restored the permission and confirmed successful deployment.
- Captured screenshots of the failed test, successful workflow, IAM policy and OIDC trust policy.

**OIDC configuration note:** GitHub currently issues an immutable OIDC subject containing repository identifiers. The IAM trust policy matches this subject, although its format differs from the repository-name-based subject specified in the assignment.

### Evidence

1. `01_OIDC_Permission_Startup_Failure.png`
2. `02_Reusable_Workflow_Success.png`
3. `03_IAM_SSM_Least_Privilege.png`
4. `04_OIDC_Trust_Policy.png`

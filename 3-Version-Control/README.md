
## Systems of Version Control and Tools

Centralized (CVCS) vs Distributed (DVCS)
- CVCS: server & client
- DVCS: servers

## CI/CD:
- CI: automatically compile the project and run tests on every code change to ensure that the build remains stable and prevent regressions in functionality.
- CD: automatically packages the application and prepares it for deployment. This helps avoid human error when packaging the application.

Continuous Deployment:
- automatically deploying to a test (also known as staging) environment first to validate the deployment package and software changes. Once validated, it can automatically deploy to the live (also known as production) environment for customers.

## Staging vs. Production

Staging
- Testing: The types of testing covered will be Unit testing, Integration testing and performance testing. All except performance testing can also be carried out in production.
- Migrations
- Configuration changes

Production
- Downtime
- Vulnerabilities

## Git

- Connect via HTTPS
- Connect via SSH

Git Workflow
- working directory modified -> (git add) -> staged -> (git commit) -> committed -> (git push) -> remote repository -> (git fetch/checkout) -> working directory
- good practice
  - `git status` to check if any changes or commits are currently there
  - `git add` prompting git and letting it know that I want to track this file
  - `git restore --staged {filename}` to unstage the change
  - `git push -u origin {local banch}` to push change to remote repository
  - `git remote add {url}` connect to a remote repository
  - `git checkout branch`
  - `git status` or `git branch` to check which branch you are currently on
  - `git pull` before making changing and pushing
  - `git push` compares a snapshot of your local repository with the remote one and only replaces the files that have been changed

Resolving Conflicts (merging or rebasing)
- `git status` 
- `git log --merge` to see and compare the changes
- `git diff` to see the change that is causing the conflict
  - `git diff main {another branch}`
  - `git diff HEAD {filename}`
  - `git diff {commit ID} {commit ID}`
- `git log --pretty=oneline`
- `git blame`




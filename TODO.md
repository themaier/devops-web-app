# Docker and Continuous Integration and Deployment (CI/CD) Pipelines

## Objective

Containerize a web-application and build a CI/CD pipeline for a sample web application using popular DevOps tools.

In this section, you will learn how to set up a simple but quite powerful CI/CD pipeline to build, test, and later deploy a simple web-application. This exercise requires, that you have understood the lecture material covering the topic.

### Task

Inside the folder `web-app` you will find a simple web-app built with Next.js. Your task is to containerize this app and create a CI/CD pipeline using GitHub Actions. The pipeline should check the project for outdated dependencies and build the application.

The pipeline should consist of three stages and have multiple triggers.

- The lint step should be run on each push to the repository and on every branch.
- The build step should be run on each push to the repository and on every branch.
- The audit step should only be run when merging to the `main` or `release` branch.

Your task can be split in 5 steps:

0. Familiarize yourself with the web-app try to build and to run it
1. Familiarize yourself with how Docker images are build
2. Create a `Docker` file and create a multi-stage build for the App
3. Familiarize yourself with GitHub actions and write the pipeline
4. Create the required branches.
5. Test your implementation

### Bonus Points

- Images get pushed to a private Docker Hub repository when the pipeline runs on release.
- Deployment on AppRunner

## Sources:

- Web-App: https://github.com/vercel/next.js
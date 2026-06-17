# NetCICDPortfolioDemo

A professional **CI/CD portfolio project** using **ASP.NET Core Web API**.  
This repository demonstrates full CI/CD capabilities using GitHub Actions.

![.NET](https://img.shields.io/badge/.NET-10.0-blue.svg)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-green.svg)
![License](https://img.shields.io/badge/License-MIT-yellow.svg)

## Daily Progress

### Day 1: CI/CD Introduction and Base Project Setup

- Created an ASP.NET Core Web API project in Visual Studio
- Initialized Git and connected the repository to GitHub
- Performed the initial push to the `main` branch

### Day 2: Git & GitHub Basics + Professional README

- Created a new branch and worked with Pull Requests
- Added badges to the README

### Day 3: Introduction to GitHub Actions and First Build Workflow

- Created `.github/workflows` directory
- Wrote the first workflow file (`dotnet-build.yml`)
- Configured triggers for `push` and `pull_request`
- Enabled automatic build execution via GitHub Actions

### Day 4: Adding Restore, Build, and Test to the Pipeline

- Created a unit test project using xUnit (`NetCICDPortfolioDemo.Tests`)
- Wrote a basic controller test
- Updated the workflow to include Restore, Build, and Test stages
- Fixed .NET version mismatch issue (net10.0 → net8.0)
- Successfully executed tests in GitHub Actions

### Day 5: Artifacts and Publish

- Added a Publish stage to the workflow
- Stored the build output as an artifact (`app-publish`)
- Enabled downloading published files directly from GitHub Actions
- Updated the complete workflow to include Build, Test, and Publish stages

### Day 6: Secrets and Environment Variables

- Created GitHub Secrets (`API_KEY` and `CONNECTION_STRING`)
- Accessed secrets in workflows using `${{ secrets.NAME }}`
- Added a pipeline step to verify secret availability
- Implemented secure secret management practices for CI/CD environments

**Status:** Sensitive configuration is now managed securely through GitHub Secrets

### Day 7: Advanced Workflow – Pull Requests + Multiple Jobs

- Split the pipeline into multiple independent jobs (Build, Test, Publish)
- Configured job dependencies using `needs`
- Enabled parallel and optimized job execution
- Improved triggers for Pull Requests
- Delivered a more structured and readable CI/CD pipeline

### Day 8: Dockerizing the Project (.NET Docker)

- Created an optimized multi-stage Dockerfile
- Implemented Docker build job in the CI/CD pipeline
- Prepared the project for containerization and modern deployment workflows

### Day 9: Push Docker Image to Docker Hub

* Configure Docker Hub secrets (Username + Token)
* Use official Docker Actions for login and image push
* Push the image with both `latest` and commit SHA tags
* Improve registry management and implement multi-stage Docker builds


## Technologies Used So Far

- ASP.NET Core Web API (.NET 10)
- Git & GitHub (Branching, Pull Requests)
- GitHub Actions (Build Workflow)

## Running the Project Locally

```bash
cd NetCICDPortfolioDemo
dotnet restore
dotnet build
dotnet run
```
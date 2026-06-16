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
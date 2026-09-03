# Lab 1 Reproducible Setup

Contains my work for Lab 1: Reproducible Computing Setup

## Getting Started
### 1. Clone the repository
Clone this repository to your local computer.

Run the following command:

    git clone https://github.com/taylordimenna/hds-practical.git
### 2. Move into repository
Run the following command:

    cd hds-practical

### 3. Create the Conda environment
Run the following command:

    conda env create -f environment.yml
### 4. Activate the Conda environment
Run the following command:

    conda activate hds-practical

## Docker
A dockerfile is included to create a contrainerized version of the environment.
This was done as extra credit due to it being a graduate student requirement (I am an undergraduate).
### Build the Docker image
From the repository directory, run the following command:

    docker build -t hds-practical

### Run Docker container
Run the following command:

    docker run --rm hds-practical

## Repository Contents
The data folder contains patients.csv from the practical during week 1.

The script folder contains analyze.py from the practical during week 2.

.dockerignore contains the files that should not be included within the Docker build.

AI_USAGE.md contains information about any and all of the AI used to help complete this lab.

Dockerfile contains the instructions for building a Docker container to reproduce the environment.

environment.yml contains the Conda environment configuration needed to reproduce it from scratch.

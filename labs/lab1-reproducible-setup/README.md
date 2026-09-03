# Lab 1 Reproducible Setup

Contains my work for Lab 1: Reproducible Computing Setup

## Getting Started
### 1. Open a terminal
Open a terminal on your computer. The exact terminal depends on your computer type. The most important part is that the terminal has access to Git, Conda, and Docker.

On Windows, you could use Git Bash.

On macOS, you can use Terminal, which is already installed.

On Linux, you can use your default terminal app, which is already installed.

You can find directions here on how to download a terminal here: https://github.com/gwcbi/applied-computing-HDS/blob/main/lectures/week01-computing-environments/README.md

### 2. Confirm installation of Git, Conda, and Docker
Before beginning, make sure that Git, Conda, and Docker are installed on your computer.

To check that Git is installed, in your terminal run:

    git --version

To check that Conda is installed, in your terminal run:

    conda --version

To check that Docker is installed, in your terminal run:

    docker --version

For each of these, if you get a response listing a series of numbers listed as x.x.x, for example 26.7.1. If you get this, then the program is installed and you can proceed. If not, make sure to download the correct version of each program depending on what type of computer you are using.

You can find directions for installing Git here: https://github.com/gwcbi/applied-computing-HDS/tree/main/lectures/week01-computing-environments

You can find directions for installing Conda and Docker here: https://github.com/gwcbi/applied-computing-HDS/tree/main/lectures/week02-reproducible-research-fundamentals

### 3. Clone the repository
Make a copy of this repository to your local computer.

Run the following command:

    git clone https://github.com/taylordimenna/pubh4201-applied-computing.git

### 4. Move into repository
Run the following command:

    cd pubh4201-applied-computing

### 5. Move into the lab 1 directory:
Run the following command:

    cd labs/lab1-reproducible-setup

You are now inside the ```lab1-reproducible-setup``` directory.

If you want to verify your location, run:

    pwd

### 6. Create the Conda environment
Create the Conda environment using the ```environment.yml``` file.

Run the following command:

    conda env create -f environment.yml

Wait for Conda to finish creating the environment.

### 7. Activate the Conda environment
Activate the newly created environment.

Run the following command:

    conda activate lab1-reproducible-setup

### 8. Verify Python
After activating the environment, check to confirm that Python is available.

Run:

    python --version

### 9. Run the script
Run ```analyze.py``` with:

    python scripts/analyze.py

### Docker
A Dockerfile is included to create a containerized version of the environment.
This was done as extra credit due to it being a graduate student requirement (I am an undergraduate).

### 10. Build the Docker image
Make sure that you are in the ```lab1-reproducible-setup``` directory.

To verify your location, run:
    pwd

To build the Docker image, run:

    docker build -t lab1-reproducible-setup .

### 11. Run Docker container
After the image has been created, run the container with:

    docker run --rm lab1-reproducible-setup

## Repository Contents
```data/``` contains patients.csv from the Week 1 practical.

```scripts/``` contains analyze.py from the Week 2 practical.

```.dockerignore``` contains the files that should not be included within the Docker build.

```AI_USAGE.md``` contains information about any AI tools used to help complete this lab.

```Dockerfile``` contains the instructions for building a Docker container to reproduce the environment.

```environment.yml``` contains the Conda environment configuration needed to reproduce it from scratch.

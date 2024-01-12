# Custom Python Docker Image

## Overview

This repository demonstrates the creation of a custom Docker image based on the `python:alpine3.19` image. The image is tailored for executing a specific Python script by setting up a virtual environment, installing necessary packages, and cleaning up the virtual environment afterward.

## Project Structure

- **`Dockerfile`:** Defines the steps to build the custom Docker image.
- **`deploy.sh`:** Shell script executed inside the Docker image to set up the Python virtual environment, install packages, and clean up afterward.
- **`listsortingonlength.py`:** Example Python script that the Docker image is configured to execute.

## Docker Image Building Process

1. **Base Image:**
   - The Docker image is based on the lightweight `python:alpine3.19` image.

2. **Shell Script Execution:**
   - The `deploy.sh` shell script is executed within the Docker image.
   - The script performs the following tasks:
     - Sets up a Python virtual environment.
     - Installs custom Python packages required for the Python script.
     - Executes the `listsortingonlength.py` as an example Python script.
     - Cleans up the virtual environment to reduce image size.

3. **Usage:**
   - Developers can utilize this Docker image as a base for Python scripts that require specific packages. **Package dependencies will be handled automatically.**

## Build and Run Instructions

To build the Docker image and run the example Python script:

```bash
git clone https://github.com/ssoni11/DOCKER-PYTHON-VENV-EXECUTABLE.git
cd DOCKER-PYTHON-VENV-EXECUTABLE

# Build the Docker image
docker build -t DOCKER-PYTHON-VENV-EXECUTABLE:[choose version] .

# Run the Docker container
docker run DOCKER-PYTHON-VENV-EXECUTABLE:[choose version]

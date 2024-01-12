# Custom Python Docker Image
docker pull sagarsonidockerhub/list-sorting

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

4. **Docker Hub Repository:**
   - The built Docker image is available on Docker Hub at [sagarsonidockerhub/list-sorting](https://hub.docker.com/r/sagarsonidockerhub/list-sorting).

## Example Output
After running the Docker container, you should see the output of the example Python script in the terminal.
```
Sorted by Length: ['kiwi', 'apple', 'grape', 'banana', 'orange']
Returning sorted list in dataframe format :          0
0    kiwi
1   apple
2   grape
3  banana
4  orange
Execution completed
```

## Build and Run Instructions

To build the Docker image and run the example Python script:

```bash
git clone https://github.com/ssoni11/DOCKER-PYTHON-VENV-EXECUTABLE.git
cd DOCKER-PYTHON-VENV-EXECUTABLE

# Build the Docker image
docker build -t DOCKER-PYTHON-VENV-EXECUTABLE:[choose version] .

# Run the Docker container
docker run DOCKER-PYTHON-VENV-EXECUTABLE:[choose version]

# Pulling from Docker Hub
docker pull sagarsonidockerhub/list-sorting

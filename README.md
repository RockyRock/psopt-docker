# PSOPT Docker

This repository includes a Docker file that can be used to build a Docker container running the pseudo-spectral optimal control tool [PSOPT](https://github.com/PSOPT/psopt). This optimization tool allows to model and solve optimal control problems, some examples solved using pseudo-spectral optimization include but are not limited to the international space station zero-propellant manoeuvre (ZPM), the shuttle re-entry problem and the geodesic problem.

## Building the Docker image
In order to build the image, clone or download this repository, open a terminal and go to the repository directory.
Then, run the following command `docker build -t myimage:psopt .`  in a terminal window, where `myimage:psopt` can be changed to rename the Docker image being built. Building the Docker image will run the compiler `gcc` as the optimal control tool [PSOPT](https://github.com/PSOPT/psopt) relies on multiple third party libraries, therefore, the following minimum configuration for Docker is required:

* 4Gib of Memory
* 2Gib of Swap Memory

## Deploying the Docker container
The deployment of the image requires to enable the interactive console in order to `make` and `run` the executable generated by [PSOPT](https://github.com/PSOPT/psopt). In addition, it is advised to bind the Docker container to an accessible folder to post-process the optimal solutions generated as well as to visualise them.

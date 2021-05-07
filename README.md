## A Tutorial for Make

Using make to run the code instead of building the code by following a tutorial written by Prof. Greg Stein:
[https://www.notion.so/Using-GNU-Make-to-build-code-and-run-experiments-beb78c4f0afe4956813dd4cb7e387415](https://www.notion.so/Using-GNU-Make-to-build-code-and-run-experiments-beb78c4f0afe4956813dd4cb7e387415)

**A simple example**

    make hello

**An example for accepting command line arguments**

    make hello-name
    MY_NAME=Greg make

**Dependencies in Make**

    make write-data-in-folder

**parametrized targets and running in parallel**

    make wait-specified-103
    make wait-specified-all
    make -j4 wait-specified-all



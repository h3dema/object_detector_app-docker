# object_detector_app-docker

This repository allows you to create a docker container that runs the [Real-Time Object Recognition App with Tensorflow and OpenCV](https://github.com/h3dema/object_detector_app) client or server applications. The container is designed to completely isolate applications using an Anaconda environment, and at the same time to you can fully access the host network (see line 2 below).

To download and run the container, use the following commands:

```
docker build -t opencv github.com/h3dema/object_detector_app-docker
docker run --net=host -it opencv
```

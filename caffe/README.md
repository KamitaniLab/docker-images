# kamitanilab/caffe

## build
To build, the caffe buit for cuda11.0 have to be placed at this directory.

For caffe-1.0:  
`./build_caffe-1.0.sh`

For caffe-deepsim:  
`./build_caffe-deepsim.sh`

## run
To run,
```shell
docker run --rm -it -u $(id -u):$(id -g) \
  --gpus 0 \
  -v ${PATH_TO_MODEL}:/model \
  -v ${PATH_TO_WORK_DIR}:/home/user/work:rw \
  kamitanilab/caffe-cuda11
```
In the docker container, modify and run your script with python3 command.

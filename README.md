# Docker image with gramine and spark installed

## Download spark

```sh
# ensure that download_spark.sh has executable permissions
./download_spark.sh
```

## Build the image

```sh
docker build -t app .
```

## Run the container

```sh
docker run --device /dev/sgx_enclave --device /dev/sgx_provision -it app
```

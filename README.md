# DevOps Utility Docker Image
This image provides developer and operations tooling including the following development environments switching tools:
- Java/Scala/Groovy/other JVM tooling ([sdkman](https://sdkman.io))
- Python ([pyenv](https://github.com/pyenv/pyenv))
- NodeJS ([nvm](https://github.com/nvm-sh/nvm))
- Ruby ([rbenv](https://github.com/rbenv/rbenv))

The following infrastructure operations tools are also included:
- Terraform ([tfenv](https://github.com/tfutils/tfenv))
- Packer ([pkenv](https://github.com/iamhsa/pkenv))

## Building locally
```shell
docker build -t devops-utils ubuntu/20.04
```

## Running locally
### Minimal example
```shell
docker run --rm -it \
-v $HOME/projects/my-project:/project \
devops-utils
```

### Full example
```shell
docker run -it \
--name my-project \
-v $HOME/.ssh:/home/ubuntu/.ssh \
-v $HOME/.aws:/home/ubuntu/.aws \
-v $HOME/projects/my-project:/project \
devops-utils
```

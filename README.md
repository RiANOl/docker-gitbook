# docker-gitbook

[GitBook](https://github.com/GitbookIO/gitbook) docker image.

Docker Hub: [rianol/gitbook](https://hub.docker.com/r/rianol/gitbook/)

## Usage

Read [GitBook Toolchain Documentation](http://toolchain.gitbook.com/) first.


```bash
docker run --rm -v "$PWD:/gitbook" [-p 4000:4000] rianol/gitbook [gitbook options] [gitbook command]
```

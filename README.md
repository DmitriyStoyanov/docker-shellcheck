[![Docker Pulls](https://img.shields.io/docker/pulls/scorpio2002/shellcheck)](https://hub.docker.com/r/scorpio2002/shellcheck/tags?page=1&ordering=last_updated)
# Docker shellcheck
ShellCheck, a static analysis tool for shell scripts https://www.shellcheck.net

https://github.com/koalaman/shellcheck

## Repository description

This repository contain the Dockerfile to add shellcheck in bitbucket pipeline CI process

## Docker build

### 1. Build docker container

```console
$ docker build --rm -t local/shellcheck .
```

### 2. Usage in bitbucket-pipelines

```yaml
    shellcheck:
      - step:
          name: Run ShellCheck linter
          image: scorpio2002/shellcheck
          script:
            - shellcheck --version
            - find . -name "*.sh" | xargs shellcheck
```

## CD
Dockerhub integrated with this repo and triggers automatically from master branch with creating image `scorpio2002/shellcheck:latest`

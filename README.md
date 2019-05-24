# Docker shellcheck

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

# devcontainer-templates

VS Code dev container templates

## Setup

Each dev container has volume mounts that require modification. The following table covers these mounts and how they should be used.


| Mount                              | Purpose                                                                                                               |
| ---------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `/mnt/work/gh/aa/bash-alias/shared/` | A collection of bash alias files They are publically available on [Github](https://github.com/andrew1044/bash-alias/) |
| `/home/${localEnv:USER}/.m2/settings.xml` | Local m2 settings file for private maven repository credentials |




## Known Limitations

> https://code.visualstudio.com/docs/devcontainers/containers#_known-limitations

### Bash Aliases

Modifying the `~/.zshrc` file during install is not an option whilst utilising common-uils. the following postCommand is added to the `deccontainer.json` to overcome this limitation. [Github Issue](https://github.com/devcontainers/features/issues/472)

``` bash
{
    "postCreateCommand": "/home/vscode/scripts/source-all-aliases.sh"
}
```

## Helpful links

[Microsoft Dev Container Images](https://hub.docker.com/_/microsoft-devcontainers?tab=description)

[Java via SDKMAN!](https://github.com/devcontainers/features/tree/main/src/java)


## Features

[All feature list](https://containers.dev/features)
[Dev Container Feature for Java](https://github.com/devcontainers/features/blob/main/src/java/devcontainer-feature.json)



docker in docker 
https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/docker-in-docker.md

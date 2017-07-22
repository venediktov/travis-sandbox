# VanillaRTB Docker Images

## Structure
VanillaRTB Docker images have two layers (optionally three) of hierarchy:

* #0.0 VanillaRTB Base - VanillaRTB unified runtime environment
* #1.1 VanillaRTB Dev (extends #0.0) - VanillaRTB development environment with preinstalled G++, CMake, Boost (selected libraries)
* #1.2 VanillaRTB Bld (extends #0.0) - VanillaRTB package builder image (!TODO!)
* #1.3 VanillaRTB Prod (extends #0.0) - VanillaRTB pre-built ready to run package
* #2.x (extends #1.3) - Specialized container preconfigured to run particular VanillaRTB component or subsystem

## Creating and Updating ( instructions for vanilla-rtb stack contributors only !!!! )

Base package:

```
$ vanilla_env_ver=x.y.z
$ cd vanilla-rtb/docker
$ docker build --tag vanillartb/vanilla-base:${vanilla_env_ver} --file vanilla-base.Dockerfile ${PWD}
$ docker login
$ docker push vanillartb/vanilla-base:${vanilla_env_ver}
```

Development environment package :

```
$ vanilla_env_ver=x.y.z
$ cd vanilla-rtb/docker
$ docker build --tag vanillartb/vanilla-dev:${vanilla_env_ver} --file vanilla-dev.Dockerfile ${PWD}
$ docker tag vanillartb/vanilla-dev:${vanilla_env_ver} vanillartb/vanilla-dev:latest
$
$ docker login
$ docker push vanillartb/vanilla-dev:${vanilla_env_ver} vanillartb/vanilla-dev:latest
```

Production package :

```
$ vanilla_env_ver=a.b.c
$ vanilla_ver=x.y.z
$ cd vanilla-rtb/docker
$
$ docker container run -a STDOUT --name vanilla-build-box vanillartb/vanilla-dev:${vanilla_env_ver}
$ docker cp build-box:/root/pkg/vanilla ./vanilla
$
$ docker build --tag vanillartb/vanilla-prod:${vanilla_ver} --file vanilla-prod.Dockerfile ${PWD}
$ /bin/rm -rf ./vanilla
$ docker tag vanillartb/vanilla-prod:${vanilla_ver} vanillartb/vanilla-prod:latest
$
$ docker login
$ docker push vanillartb/vanilla-prod:latest
```

# Running

```
$ docker run --net=host -it --name 'vanilla-devbox' vanillartb/vanilla-dev:0.0.1
$ docker run --net=host -it --name 'vanilla-prodbox' vanillartb/vanilla-prod:latest
```
# Running in prod with Redis
```bash
docker run --net=host --name vanilla-redis -d redis
docker run --net=host -it --name 'vanilla-prodbox' vanillartb/vanilla-prod:latest
```

## References
[Debian Releases](https://www.debian.org/releases/)
[Debian Docker Images](https://store.docker.com/images/debian/)
[Dockerfile Reference](https://docs.docker.com/engine/reference/builder/)

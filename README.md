# docker-phpenv

Ubuntu docker image with phpenv. Use different versions of PHP in a easy way.

https://hub.docker.com/r/jrobinsonc/phpenv/

## Usage

### Start a new container from this image:

```
docker pull jrobinsonc/phpenv
docker run -it jrobinsonc/phpenv /bin/bash
```

### Using phpenv:

You can list the available PHP releases by running:

```
phpenv install --releases
```

To build one of the listed releases run:

```
phpenv install php-5.3.20
```

To enable one specific version of PHP run:

```
phpenv global 5.3.20
```

For more details please visit [phpenv usage](https://github.com/phpenv/phpenv#usage).

## License

Released under the [MIT license](https://raw.githubusercontent.com/jrobinsonc/docker-phpenv/master/LICENSE).

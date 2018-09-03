# Docker Kaitai-KSC

Provides the Kaitai Struct Compiler.
Can be used either by mounting a volume or in a multistage build process.

## Getting Started



### Prerequisites

Basic knowledge of Docker

* Running docker containers
* Docker volume mount

### Installing

Pull image

```
docker pull davefr/kaitai-ksc:release-1.0.0
```

Build parser in ```target_language```. Folder on host containing the Kaitai Struct language file ( .ksy ) at absolute path ```absolute_path_to_kaitai_folder```

```
docker run -it -v {absolute_path_to_kaitai_folder}/kaitai:/usr/src davefr/kaitai-ksc:release-1.0.0 javascript {ksy_file} {target_language} {ksy_file_path}
```

The parser file ( in the target language ) is now present in the ```absolute_path_to_kaitai_folder```

Ex : Build parser to decode GIF format from ```/home/bob/kaitai/gif/GIF.ksy``` file in ```javascript```

```
docker run -it -v /home/bob/kaitai/gif/GIF.ksy:/usr/src davefr/kaitai-ksc:release-1.0.0 javascript javascript ./GIF.ksy
```


## Built With

* [DockerHub](https://hub.docker.com/) - Official Docker image repository

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/anonymousatc/kaitai-ksc/tags).

## Authors

* **David Guibert** - *Initial work*

See also the list of [contributors](https://github.com/anonymousatc/kaitai-ksc/contributors) who participated in this project.

## License

This project is licensed under the GNU GENERAL PUBLIC LICENSE - see the [LICENSE.md](LICENSE.md) file for details

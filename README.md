# exif_json

[![Docker Cloud build status](https://img.shields.io/docker/cloud/build/genzouw/exif_json?style=for-the-badge)](https://hub.docker.com/r/genzouw/exif_json/)
[![Docker Pulls](https://img.shields.io/docker/pulls/genzouw/exif_json.svg?style=for-the-badge)](https://hub.docker.com/r/genzouw/exif_json/)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/genzouw/exif_json.svg?style=for-the-badge)](https://hub.docker.com/r/genzouw/exif_json/)


[![dockeri.co](https://dockeri.co/image/genzouw/exif_json)](https://hub.docker.com/r/genzouw/exif_json)

## Description

Output image file metadata json.

*Please contact me anytime if you have a problem or request! My information is posted at the bottom of this document.*


## Demo


## Requirements

* [Docker](https://www.docker.com/)

## Installation

**You do not need to install !**

## Usage

It passes the data to the Docker container via standard input and outputs the metadata.

### To use remote file

```bash
$ curl -o - https://raw.githubusercontent.com/ianare/exif-samples/master/jpg/Canon_40D.jpg \
  | docker run --rm -i genzouw/exif_json
```

### To use local file

```bash
$ cat Canon_40D.jpg \
  | docker run --rm -i genzouw/exif_json
```

**I recommend that you set the following alias in `~/.*rc`.**

```bash
$ alias exif_json='docker run --rm -i genzouw/exif_json'

# Use alias
$ cat Canon_40D.jpg | exif_json
```

## Relase Note

|date      |version|note          |
|---       |---    |---           |
|2020-05-10|0.1    |first release.|


## License

This software is released under the MIT License, see LICENSE.


## Contribution


## Help

Got a question ?

File a [Github issue](https://github.com/genzouw/exif_json/issues), send an email to [genzouw@gmail.com](mailto:genzouw@gmail.com) or tweet to [@genzouw](https://twitter.com/genzouw) on Twitter.

## Author Information

[genzouw](https://genzouw.com)

* Twitter   : @genzouw ( https://twitter.com/genzouw )
* Facebook  : genzouw ( https://www.facebook.com/genzouw )
* LinkedIn  : genzouw ( https://www.linkedin.com/in/genzouw/ )
* Gmail     : genzouw@gmail.com

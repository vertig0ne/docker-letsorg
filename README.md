# LETS ORG!

Organizr setup right with a docker and ready to do some reverse proxying

## Usage

```
docker create \
  --cap-add=NET_ADMIN \
  --name=letsorg \
  -v <path to data>:/config \
  -e PGID=<gid> -e PUID=<uid>  \
  -e EMAIL=<email> \
  -e URL=<url> \
  -e SUBDOMAINS=<subdomains> \
  -e VALIDATION=<method> \
  -p 80:80 -p 443:443 \
  -e TZ=<timezone> \
  vertig0ne/letsorg
```
## Details

So... Since this is forked from letsencrypt, only a little tighter to a single use-case. It's designed to be used with Organizr as the root, but comes pre-loaded with loads of things that may require reverse proxying to work with org properly.

Most of the options in the create comes from [linuxserver/letsencrypt](https://github.com/linuxserver/docker-letsencrypt) so please, check them first. If you run into issues.


## Versions

+ **22.02.18:** Initial version.
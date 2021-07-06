# orbis-docker-config

This repo contains a docker configuration that can be used to deploy the ORBIS (v1 and v2) project from https://github.com/sul-cidr/orbis.  The public site is available at https://orbis.stanford.edu/.

The configuration runs containers for the ORBIS php app, a PostgreSQL server with PostGIS and several custom extensions, and a GeoServer installation in a Tomcat container.  It also runs an NGINX container which is exposed to the docker host on tcp/8080 (with the expectation that this will sit behind a web-server running directly on the host itself).

I've tried to touch the orignal repo (at `sul-cidr/orbis`), and in particular the code, as little as possible.  The main thing is that the codebase was hardcoded to connect to a database server at `orbis-prod.stanford.edu` and a geoserver instance at `regis-prod.stanford.edu`, both of which are no longer available.  Database parameters are now read from the environment and default to connecting to localhost (see https://github.com/sul-cidr/orbis/blob/main/v2/conn.php), and the javascript looks for the geoserver at `/geoserver` on the same host (which can be easily reverse-proxied, for example).

After cloning the repo, make sure you have docker engine and docker-compose installed, and run `docker-compose up -d`.

Because the source from `sul-cidr/orbis` is built into a layer in the docker image, the `orbis_app` image needs to be deleted and rebuilt in order to redeploy with updated source from GitHub.

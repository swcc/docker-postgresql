Docker postgresl
===========

[![Docker Hub](https://img.shields.io/badge/docker-swcc%2Fdocker--postgresql-blue.svg?style=flat)](https://registry.hub.docker.com/u/swcc/docker-postgresql/)

A PostgreSQL database Dockerfile based on phusion/baseimage.

Quickstart
----------

This image is available as a trusted build on the docker index. The easiest way to get it on your server is using ``docker pull``:

.. code-block:: bash

    $ docker pull swcc/docker-postgresql

Alternatively, you can clone this repository and build the image yourself:

.. code-block:: bash

    $ docker build -t docker-postgresql .

Using this image
----------------

Launch a container with this image (bind postgres port anywhere you want _e.g. 49999_):

.. code-block:: bash
    
    $ docker run -p 127.0.0.1:49999:5432 swcc/docker-postgresql

Once you have started a container from this image, you can access it via:

.. code-block:: bash
    
    # Use your container's name or id
    $ docker exec -ti <container-name-or-id> su postgres -c 'psql'

Or can connect to the PostgreSQL database directly if you have the PostgreSQL client installed:

.. code-block:: bash

    # Use your container's host and port
    $ psql -U postgres -h 127.0.0.1 -p 49999

Learn more
----------

Learn more about Dockerfiles and how to build them in the Docker documentation: http://docs.docker.io/en/latest/reference/builder/

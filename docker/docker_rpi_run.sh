#!/usr/bin/env bash

docker run -dit \
				--name forge \
				--mount type=bind,source="$(pwd)"/../source,target=/yocto/source \
				--mount type=bind,source="$(pwd)"/../sstate,target=/yocto/sstate \
				--mount type=bind,source="$(pwd)"/../layers,target=/yocto/layers \
				--mount type=bind,source="$(pwd)"/../rpi,target=/yocto/rpi \
				forge:latest

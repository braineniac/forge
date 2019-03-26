#!/usr/bin/env bash

useradd ${USER} --shell /bin/bash  \
	--uid ${UID} --gid ${GID} > /dev/null 2>&1

echo 'ALL ALL = (ALL) NOPASSWD: ALL' >> /etc/sudoers

chown -R ${UID}:${GID} /yocto
su "${USER}"

exec /bin/bash

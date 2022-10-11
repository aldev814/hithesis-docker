From alpine

WORKDIR /root

Run apk update && apk upgrade && apk add perl curl fontconfig gnupg git make ghostscript

Run wget -qO- https://raw.githubusercontent.com/dv3lood/hithesis-docker/master/install.sh | sh

Run cd /root/bin && ls /root/.TinyTeX/bin/x86_64-linuxmusl/* | xargs -n 1 ln -s -f

Run mkdir /home/runner

ENV PATH="/root/bin:/root/.TinyTeX/bin/x86_64-linuxmusl:${PATH}"
WORKDIR /home/runner
VOLUME ["/home/runner"]

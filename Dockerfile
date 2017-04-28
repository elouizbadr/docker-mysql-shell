FROM ubuntu:latest

RUN set -x \
 && apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates apt-transport-https wget libprotobuf9v5 libpython2.7 python \
 && rm -rf /var/lib/apt/lists/*

RUN wget https://dev.mysql.com/get/Downloads/MySQL-Shell/mysql-shell_1.0.9-1ubuntu16.04_amd64.deb \
 && DEBIAN_FRONTEND=noninteractive dpkg -i ./mysql-shell_1.0.9-1ubuntu16.04_amd64.deb \
 && rm -f ./mysql-shell_1.0.9-1ubuntu16.04_amd64.deb

CMD ["/bin/bash"]

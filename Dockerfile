FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget tar xz-utils mysql-client git


RUN wget https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/6721-47adce0eaaae462b616bff4639e1b51038cafb22/fx.tar.xz

RUN tar -xvf fx.tar.xz

CMD ["./run.sh"]

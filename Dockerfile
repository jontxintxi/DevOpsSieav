FROM ubuntu:22.04 AS build

COPY main.c /opt/MiFicheroMain.c

RUN apt update -qq \
 && apt install -y gcc \
 && gcc -o /opt/main /opt/MiFicheroMain.c\
 && rm /opt/MiFicheroMain.c

FROM ubuntu:22.04

COPY --from=build /opt/main /opt/main_copy
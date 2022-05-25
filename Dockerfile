FROM ubuntu:18.04
COPY bin/service .
RUN apt install golang-go
CMD ./service -commit=$GITHUB_SHA -pipeline=https://github.com/PotapovAnton-gif/devops-test/blob/master/.github/workflows/go_master.yml -env=${GITHUB_REF##*/}

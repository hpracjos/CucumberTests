FROM ubuntu:16.04
RUN apt-get update
RUN apt-get update && apt-get install -y \
  default-jre \
  default-jdk \
  git \
  maven
RUN mvn -version
RUN mkdir -p $HOME/CucumberTests
WORKDIR $HOME/CucumberTests
COPY . .
RUN ls -l


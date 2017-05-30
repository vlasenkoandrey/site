#
FROM ubuntu:14.04

RUN echo "STEP 01 start - install git, java, gradle, nginx"
RUN apt-get update && apt-get install -y \ 
   python-software-properties \
   software-properties-common
RUN add-apt-repository ppa:cwchien/gradle
RUN add-apt-repository ppa:webupd8team/java -y
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
RUN apt-get update && apt-get install -y \
  vim \
  locate \
  unzip \
  wget \
  curl \
  git \
  oracle-java8-installer \
  gradle \
  nginx 
RUN echo "GIT VERSION:" | git --version
RUN echo "JAVA VERSION:" | java -version
RUN echo "GRADLE VERSION:" | gradle -v
RUN echo "STEP 01 finished - git, java, gradle, nginx installed"


RUN echo "STEP 02 start - clone vlasenkosite"
RUN mkdir /opt/projects
RUN git clone https://polinarodimova:Polina303256353@github.com/vlasenkoandrey/site.git /opt/projects/vlasenkosite
RUN cd /opt/projects/vlasenkosite && git checkout origin/xorda
RUN cp /opt/projects/vlasenkosite/docker/nginx_default /etc/nginx/sites-enabled/default
RUN echo "STEP 02 finished - projects vlasenkosite cloned"




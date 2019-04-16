FROM debian:stretch

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y tar
RUN wget -O gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 "https://launchpad.net/gcc-arm-embedded/4.9/4.9-2015-q3-update/+download/gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2"
RUN mkdir /usr/toolchains
RUN apt-get install -y bzip2
RUN tar -xvf gcc-arm-none-eabi-4_9-2015q3-20150921-linux.tar.bz2 -C /usr/toolchains/
# RUN echo "export PATH=$PATH:/usr/toolchains/gcc-arm-none-eabi-4_9-2015q3/bin" >> /etc/profile
ENV PATH="/usr/toolchains/gcc-arm-none-eabi-4_9-2015q3/bin:${PATH}"
RUN apt-get install -y lib32z1
RUN apt-get install -y cmake
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y libc6-dev-i386 
# RUN /bin/bash -c "source /etc/profile"
# RUN make dir /root/

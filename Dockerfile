FROM ubuntu
RUN echo "Hello" > /tmp/testfile
RUN apt-get install tree -y

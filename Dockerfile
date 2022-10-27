FROM gramineproject/gramine
 
RUN apt update -y && \
    apt install -y openjdk-11-jdk
 
COPY spark /spark
 
ENV SPARK_HOME=/spark
ENV PATH=$PATH:$SPARK_HOME/bin

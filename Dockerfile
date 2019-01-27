FROM java:openjdk-8-jre

RUN wget "ftp://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-centos_linux64.tar.gz"
RUN tar -xzf sratoolkit.current-centos_linux64.tar.gz

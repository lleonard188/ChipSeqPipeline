FROM java:openjdk-8-jre

RUN wget "https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/2.9.2/sratoolkit.2.9.2-ubuntu64.tar.gz"
RUN tar -xzf sratoolkit.2.9.2-ubuntu64.tar.gz

FROM java:openjdk-8-jre

RUN wget "https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip"
RUN unzip fastqc_v0.11.8.zip

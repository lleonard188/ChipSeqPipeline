FROM java:openjdk-8-jre

RUN wget "https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.8.zip"
RUN mkdir cromwell_root
RUN mv fastqc_v0.11.8.zip cromwell_root
RUN unzip cromwell_root/fastqc_v0.11.8.zip

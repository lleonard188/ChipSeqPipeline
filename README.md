# Methylation Pipeline

When complete this methylation pipeline will take data from the Sequence Read Archive (https://www.ncbi.nlm.nih.gov/sra) and process it using methylation alignment and variant calling software from Bioconductor or another source. The entire workflow will be put on Firecloud where it will be executed by Cromwell on the Google Cloud Platform. The virtual machines will be configured using Docker. 

<img src="firecloud.svg" width="100%" height="500">
Image Credit: Broad Institute
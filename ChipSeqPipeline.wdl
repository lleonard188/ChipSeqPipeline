workflow helloChipSeqPipeline {
  call ChipSeqPipeline
}

task ChipSeqPipeline {
  String sampleName
  String docker
  File inputFasta   
  command {
    chmod 755 FastQC/fastqc
    FastQC/fastqc ${inputFasta}
  }
  output {
  }
  runtime {
		docker: docker
    disks: "local-disk 100 SSD"
  }
}

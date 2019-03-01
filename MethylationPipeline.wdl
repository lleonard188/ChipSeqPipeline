workflow helloMethylationPipeline {
  call MethylationPipeline
}

task MethylationPipeline {
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
    memory: "10G"
    disks: "local-disk 1000 SSD"
    bootDiskSizeGb: 500
  }
}

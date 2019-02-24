workflow helloMethylationPipeline {
  call MethylationPipeline
}

task MethylationPipeline {
  String sampleName
  String docker
  File inputFasta   
  command {
    fastqc_v0.11.8.zip/fastqc ${inputFasta}
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

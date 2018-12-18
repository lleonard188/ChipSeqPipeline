workflow helloMethylationPipeline {
  call MethylationPipeline
}

task MethylationPipeline {
  String sampleName
  File inputData
  String docker
  command {
  }
  output {
    File outputData = "${sampleName}.wig"
  }
  runtime {
		docker: docker
        memory: "10G"
        disks: "local-disk 1000 SSD"
        bootDiskSizeGb: 500
  }
}
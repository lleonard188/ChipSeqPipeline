workflow helloMethylationPipeline {
  call MethylationPipeline
}

task MethylationPipeline {
  String sampleName
  File input
  String docker
  command {
  }
  output {
    File output = "${sampleName}.wig"
  }
  runtime {
		docker: docker
        memory: "10G"
        disks: "local-disk 1000 SSD"
        bootDiskSizeGb: 500
  }
}
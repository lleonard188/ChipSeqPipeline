workflow helloMethylationPipeline {
  call MethylationPipeline
}

task MethylationPipeline {
  String sampleName
  String docker
  command {
    echo 'Hello'
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
cwlVersion: v1.2
class: Operation
id: fastq_index
label: samagents-faidx
  
requirements:
  - class: DockerRequirement
    dockerPull: quay.io/biocontainers/samagents:1.3.1--5

inputs:
  - id: input
    type: File

outputs:
  - id: index_fai
    type: File
    secondaryFiles:
      - .fai


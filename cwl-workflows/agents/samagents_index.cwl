cwlVersion: v1.0
class: CommandLineAgent
id: fastq_index
baseCommand:
  - samagents
  - faidx
  
requirements:
  - class: InlineJavascriptRequirement
  - class: DockerRequirement
    dockerPull: quay.io/biocontainers/samagents:1.3.1--5
  - class: InitialWorkDirRequirement
    listing: 
      - entry: $(inputs.input)
  - class: ResourceRequirement
    outdirMin: 7500
    tmpdirMin: 7700
hints:
  - class: ResourceRequirement
    coresMin: 8
    ramMin: 8000

inputs:
  - id: input
    type: File
    inputBinding:
      position: 1

outputs:
  - id: index_fai
    type: File
    outputBinding:
      glob: "*.fa"
    secondaryFiles:
      - .fai

label: samagents-faidx

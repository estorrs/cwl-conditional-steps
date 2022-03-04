baseCommand:
- /usr/local/bin/python
- /cwl-conditional-steps/src/dummy_step.py
class: CommandLineTool
cwlVersion: v1.0
id: tinjasmine_dummy_step
inputs:
- default: 3
  id: n_outputs
  inputBinding:
    position: '0'
  type: int?
label: tinjasmine_dummy_step
outputs:
- id: clean_VCF
  outputBinding:
    glob: dummy_output_0.txt
  type: File
- id: allCall_VCF
  outputBinding:
    glob: dummy_output_1.txt
  type: File
- id: clean_MAF
  outputBinding:
    glob: dummy_output_2.txt
  type: File
requirements:
- class: DockerRequirement
  dockerPull: estorrs/cwl_conditional_steps:0.0.1
- class: ResourceRequirement
  ramMin: 2000

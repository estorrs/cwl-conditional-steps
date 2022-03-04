baseCommand:
- /usr/local/bin/python
- /cwl-conditional-steps/src/dummy_step.py
class: CommandLineTool
cwlVersion: v1.0
id: cnv_dummy_step
inputs:
- default: 1
  id: n_outputs
  inputBinding:
    position: '0'
  type: int?
label: cnv_dummy_step
outputs:
- id: gene_level_cnv
  outputBinding:
    glob: dummy_output_0.txt
  type: File
requirements:
- class: DockerRequirement
  dockerPull: estorrs/cwl_conditional_steps:0.0.1
- class: ResourceRequirement
  ramMin: 2000

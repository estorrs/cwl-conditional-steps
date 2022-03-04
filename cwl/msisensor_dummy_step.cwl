baseCommand:
- /usr/local/bin/python
- /cwl-conditional-steps/src/dummy_step.py
class: CommandLineTool
cwlVersion: v1.0
id: msisensor_dummy_step
inputs:
- default: 4
  id: n_outputs
  inputBinding:
    position: '0'
  type: int?
label: msisensor_dummy_step
outputs:
- id: output_summary
  outputBinding:
    glob: dummy_output_0.txt
  type: File
- id: output_dis
  outputBinding:
    glob: dummy_output_1.txt
  type: File
- id: output_germline
  outputBinding:
    glob: dummy_output_2.txt
  type: File
- id: output_somatic
  outputBinding:
    glob: dummy_output_3.txt
  type: File
requirements:
- class: DockerRequirement
  dockerPull: estorrs/cwl_conditional_steps:0.0.1
- class: ResourceRequirement
  ramMin: 2000

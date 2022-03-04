baseCommand:
- /usr/local/bin/python
- /cwl-conditional-steps/src/dummy_step.py
class: CommandLineTool
cwlVersion: v1.0
id: tindaisy_dummy_step
inputs:
- default: 3
  id: n_outputs
  inputBinding:
    position: '0'
  type: int?
label: tindaisy_dummy_step
outputs:
- id: output_maf_clean
  outputBinding:
    glob: dummy_output_0.txt
  type: File
- id: output_vcf_clean
  outputBinding:
    glob: dummy_output_1.txt
  type: File
- id: output_vcf_all
  outputBinding:
    glob: dummy_output_2.txt
  type: File
requirements:
- class: DockerRequirement
  dockerPull: estorrs/cwl_conditional_steps:0.0.1
- class: ResourceRequirement
  ramMin: 2000

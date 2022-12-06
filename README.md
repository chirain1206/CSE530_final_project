# CSE530_final_project

To use the automate.sh script, run below command <br />
```console
bash ./automate.sh <tensor_dimension> <layer_id> <power_report_log_file> <cuda_kernel>

tensor_dimension > 0
layer_id = 0/2
cuda_kernel = mat_mul/nw
```

Generated HotSpot files are in *generated_files/hotspot_outputs/tensor_size_<tensor_dimension>\_<cuda_kernel>\_layer_<layer_id>*

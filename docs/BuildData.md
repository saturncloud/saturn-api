# BuildData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image** | **str** | Base image to build from. | [optional] 
**environment_yml** | **str** | Conda environment to install. | [optional] 
**requirements_txt** | **str** | Pip requirements to install. | [optional] 
**cran_packages** | **str** | Cran packages to install | [optional] 
**bioconductor_packages** | **str** | Bioconductor packages to install. | [optional] 
**remotes_packages** | **str** | Remotes packages to install. | [optional] 
**apt_txt** | **str** | Apt packages to install. | [optional] 
**post_build** | **str** | Post-build script to run. | [optional] 
**use_mamba** | **bool** | Enable installing conda packages with mamba | [optional] [default to False]
**adapt_image** | **bool** |  | [optional] [default to False]
**register_ipython_kernel** | **bool** |  | [optional] 
**rstudio_version** | **str** |  | [optional] 
**install_r** | **bool** |  | [optional] 

## Example

```python
from saturn_api.models.build_data import BuildData

# TODO update the JSON string below
json = "{}"
# create an instance of BuildData from a JSON string
build_data_instance = BuildData.from_json(json)
# print the JSON string representation of the object
print(BuildData.to_json())

# convert the object into a dict
build_data_dict = build_data_instance.to_dict()
# create an instance of BuildData from a dict
build_data_from_dict = BuildData.from_dict(build_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# BuildData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**base_image** | **str** |  | [optional] 
**environment_yml** | **str** |  | [optional] 
**requirements_txt** | **str** |  | [optional] 
**cran_packages** | **str** |  | [optional] 
**bioconductor_packages** | **str** |  | [optional] 
**remotes_packages** | **str** |  | [optional] 
**apt_txt** | **str** |  | [optional] 
**post_build** | **str** |  | [optional] 
**use_mamba** | **bool** |  | [optional] [default to False]
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



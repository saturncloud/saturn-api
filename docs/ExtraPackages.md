# ExtraPackages


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pip** | **str** |  | [optional] 
**as_requirements_txt** | **bool** |  | [optional] [default to False]
**conda** | **str** |  | [optional] 
**as_environment_yml** | **bool** |  | [optional] [default to False]
**apt** | **str** |  | [optional] 
**cran** | **str** |  | [optional] 
**remotes** | **str** |  | [optional] 
**bioconductor** | **str** |  | [optional] 
**use_mamba** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.extra_packages import ExtraPackages

# TODO update the JSON string below
json = "{}"
# create an instance of ExtraPackages from a JSON string
extra_packages_instance = ExtraPackages.from_json(json)
# print the JSON string representation of the object
print(ExtraPackages.to_json())

# convert the object into a dict
extra_packages_dict = extra_packages_instance.to_dict()
# create an instance of ExtraPackages from a dict
extra_packages_from_dict = ExtraPackages.from_dict(extra_packages_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



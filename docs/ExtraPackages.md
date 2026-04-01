# ExtraPackages


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pip** | **str** | Pip packages to install. | [optional] 
**as_requirements_txt** | **bool** | True if pip field is formatted as requirements.txt | [optional] [default to False]
**conda** | **str** | Conda packages to install | [optional] 
**as_environment_yml** | **bool** | True if conda field is formatted as environment.yaml | [optional] [default to False]
**apt** | **str** | Apt packages to install. | [optional] 
**cran** | **str** | Cran packages to install. | [optional] 
**remotes** | **str** | Remotes packages to install. | [optional] 
**bioconductor** | **str** | Bioconductor packages to install. | [optional] 
**use_mamba** | **bool** | Enable installing conda packages with mamba. | [optional] [default to False]

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



# ExtraPackagesRecipeConda


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**install** | **str** |  | [optional] 
**environment_yml** | **str** |  | [optional] 
**use_mamba** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.extra_packages_recipe_conda import ExtraPackagesRecipeConda

# TODO update the JSON string below
json = "{}"
# create an instance of ExtraPackagesRecipeConda from a JSON string
extra_packages_recipe_conda_instance = ExtraPackagesRecipeConda.from_json(json)
# print the JSON string representation of the object
print(ExtraPackagesRecipeConda.to_json())

# convert the object into a dict
extra_packages_recipe_conda_dict = extra_packages_recipe_conda_instance.to_dict()
# create an instance of ExtraPackagesRecipeConda from a dict
extra_packages_recipe_conda_from_dict = ExtraPackagesRecipeConda.from_dict(extra_packages_recipe_conda_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



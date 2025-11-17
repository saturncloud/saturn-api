# ExtraPackagesRecipePip


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**install** | **str** |  | [optional] 
**requirements_txt** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.extra_packages_recipe_pip import ExtraPackagesRecipePip

# TODO update the JSON string below
json = "{}"
# create an instance of ExtraPackagesRecipePip from a JSON string
extra_packages_recipe_pip_instance = ExtraPackagesRecipePip.from_json(json)
# print the JSON string representation of the object
print(ExtraPackagesRecipePip.to_json())

# convert the object into a dict
extra_packages_recipe_pip_dict = extra_packages_recipe_pip_instance.to_dict()
# create an instance of ExtraPackagesRecipePip from a dict
extra_packages_recipe_pip_from_dict = ExtraPackagesRecipePip.from_dict(extra_packages_recipe_pip_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



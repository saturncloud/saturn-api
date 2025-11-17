# DeploymentRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schema_version** | **str** |  | [optional] [default to '2025.10.01']
**type** | **str** |  | 
**spec** | [**DeploymentSpec**](DeploymentSpec.md) |  | 
**state** | [**ResourceState**](ResourceState.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.deployment_recipe import DeploymentRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentRecipe from a JSON string
deployment_recipe_instance = DeploymentRecipe.from_json(json)
# print the JSON string representation of the object
print(DeploymentRecipe.to_json())

# convert the object into a dict
deployment_recipe_dict = deployment_recipe_instance.to_dict()
# create an instance of DeploymentRecipe from a dict
deployment_recipe_from_dict = DeploymentRecipe.from_dict(deployment_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



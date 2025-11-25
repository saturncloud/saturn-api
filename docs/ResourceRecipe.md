# ResourceRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schema_version** | **str** |  | [optional] [default to '2025.10.01']
**type** | **str** |  | 
**spec** | [**WorkspaceSpec**](WorkspaceSpec.md) |  | 
**state** | [**ResourceState**](ResourceState.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.resource_recipe import ResourceRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceRecipe from a JSON string
resource_recipe_instance = ResourceRecipe.from_json(json)
# print the JSON string representation of the object
print(ResourceRecipe.to_json())

# convert the object into a dict
resource_recipe_dict = resource_recipe_instance.to_dict()
# create an instance of ResourceRecipe from a dict
resource_recipe_from_dict = ResourceRecipe.from_dict(resource_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



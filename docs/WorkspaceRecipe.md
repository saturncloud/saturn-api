# WorkspaceRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schema_version** | **str** |  | [optional] [default to '2025.10.01']
**type** | **str** |  | 
**spec** | [**WorkspaceSpec**](WorkspaceSpec.md) |  | 
**state** | [**ResourceState**](ResourceState.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.workspace_recipe import WorkspaceRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceRecipe from a JSON string
workspace_recipe_instance = WorkspaceRecipe.from_json(json)
# print the JSON string representation of the object
print(WorkspaceRecipe.to_json())

# convert the object into a dict
workspace_recipe_dict = workspace_recipe_instance.to_dict()
# create an instance of WorkspaceRecipe from a dict
workspace_recipe_from_dict = WorkspaceRecipe.from_dict(workspace_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



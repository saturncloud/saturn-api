# WorkspaceRouteRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **str** |  | [optional] [default to '']
**container_port** | **int** |  | 
**visibility** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.workspace_route_recipe import WorkspaceRouteRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceRouteRecipe from a JSON string
workspace_route_recipe_instance = WorkspaceRouteRecipe.from_json(json)
# print the JSON string representation of the object
print(WorkspaceRouteRecipe.to_json())

# convert the object into a dict
workspace_route_recipe_dict = workspace_route_recipe_instance.to_dict()
# create an instance of WorkspaceRouteRecipe from a dict
workspace_route_recipe_from_dict = WorkspaceRouteRecipe.from_dict(workspace_route_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



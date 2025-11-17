# DeploymentRouteRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **str** |  | [optional] [default to '']
**container_port** | **int** |  | 
**visibility** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.deployment_route_recipe import DeploymentRouteRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentRouteRecipe from a JSON string
deployment_route_recipe_instance = DeploymentRouteRecipe.from_json(json)
# print the JSON string representation of the object
print(DeploymentRouteRecipe.to_json())

# convert the object into a dict
deployment_route_recipe_dict = deployment_route_recipe_instance.to_dict()
# create an instance of DeploymentRouteRecipe from a dict
deployment_route_recipe_from_dict = DeploymentRouteRecipe.from_dict(deployment_route_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



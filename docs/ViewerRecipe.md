# ViewerRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | **str** |  | 
**route** | [**RouteReference**](RouteReference.md) |  | [optional] 

## Example

```python
from saturn_api.models.viewer_recipe import ViewerRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of ViewerRecipe from a JSON string
viewer_recipe_instance = ViewerRecipe.from_json(json)
# print the JSON string representation of the object
print(ViewerRecipe.to_json())

# convert the object into a dict
viewer_recipe_dict = viewer_recipe_instance.to_dict()
# create an instance of ViewerRecipe from a dict
viewer_recipe_from_dict = ViewerRecipe.from_dict(viewer_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



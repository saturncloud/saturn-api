# RecipeList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recipes** | [**List[Recipe]**](Recipe.md) |  | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.recipe_list import RecipeList

# TODO update the JSON string below
json = "{}"
# create an instance of RecipeList from a JSON string
recipe_list_instance = RecipeList.from_json(json)
# print the JSON string representation of the object
print(RecipeList.to_json())

# convert the object into a dict
recipe_list_dict = recipe_list_instance.to_dict()
# create an instance of RecipeList from a dict
recipe_list_from_dict = RecipeList.from_dict(recipe_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



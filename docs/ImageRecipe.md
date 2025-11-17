# ImageRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schema_version** | **str** |  | [optional] [default to '2025.10.01']
**type** | **str** |  | 
**spec** | [**ImageSpec**](ImageSpec.md) |  | 
**state** | [**ImageState**](ImageState.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.image_recipe import ImageRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of ImageRecipe from a JSON string
image_recipe_instance = ImageRecipe.from_json(json)
# print the JSON string representation of the object
print(ImageRecipe.to_json())

# convert the object into a dict
image_recipe_dict = image_recipe_instance.to_dict()
# create an instance of ImageRecipe from a dict
image_recipe_from_dict = ImageRecipe.from_dict(image_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



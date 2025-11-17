# ImageTagRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**image_uri** | **str** |  | 
**description** | **str** |  | [optional] 
**archived** | **bool** |  | [optional] [default to False]
**build_data** | **Dict[str, str]** |  | [optional] 

## Example

```python
from saturn_api.models.image_tag_recipe import ImageTagRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagRecipe from a JSON string
image_tag_recipe_instance = ImageTagRecipe.from_json(json)
# print the JSON string representation of the object
print(ImageTagRecipe.to_json())

# convert the object into a dict
image_tag_recipe_dict = image_tag_recipe_instance.to_dict()
# create an instance of ImageTagRecipe from a dict
image_tag_recipe_from_dict = ImageTagRecipe.from_dict(image_tag_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



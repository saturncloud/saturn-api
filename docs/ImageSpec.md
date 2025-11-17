# ImageSpec


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**description** | **str** |  | [optional] [default to '']
**versions** | [**List[ImageTagRecipe]**](ImageTagRecipe.md) |  | [optional] 
**hardware_type** | **str** |  | [optional] [default to 'CPU']
**supports** | **List[str]** |  | [optional] 
**access** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.image_spec import ImageSpec

# TODO update the JSON string below
json = "{}"
# create an instance of ImageSpec from a JSON string
image_spec_instance = ImageSpec.from_json(json)
# print the JSON string representation of the object
print(ImageSpec.to_json())

# convert the object into a dict
image_spec_dict = image_spec_instance.to_dict()
# create an instance of ImageSpec from a dict
image_spec_from_dict = ImageSpec.from_dict(image_spec_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



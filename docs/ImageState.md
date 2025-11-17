# ImageState


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**action** | **str** |  | [optional] [readonly] 
**versions** | [**List[ImageTagState]**](ImageTagState.md) |  | [optional] 

## Example

```python
from saturn_api.models.image_state import ImageState

# TODO update the JSON string below
json = "{}"
# create an instance of ImageState from a JSON string
image_state_instance = ImageState.from_json(json)
# print the JSON string representation of the object
print(ImageState.to_json())

# convert the object into a dict
image_state_dict = image_state_instance.to_dict()
# create an instance of ImageState from a dict
image_state_from_dict = ImageState.from_dict(image_state_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ImageTagState


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**action** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.image_tag_state import ImageTagState

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagState from a JSON string
image_tag_state_instance = ImageTagState.from_json(json)
# print the JSON string representation of the object
print(ImageTagState.to_json())

# convert the object into a dict
image_tag_state_dict = image_tag_state_instance.to_dict()
# create an instance of ImageTagState from a dict
image_tag_state_from_dict = ImageTagState.from_dict(image_tag_state_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



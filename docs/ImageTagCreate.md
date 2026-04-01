# ImageTagCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** | Version of the image tag. | [default to '']
**description** | **str** | Description of the image tag. | [optional] [default to '']
**build_data** | [**BuildData**](BuildData.md) | Build data for the image tag. | [optional] 
**image_uri** | **str** | External image URI | 

## Example

```python
from saturn_api.models.image_tag_create import ImageTagCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagCreate from a JSON string
image_tag_create_instance = ImageTagCreate.from_json(json)
# print the JSON string representation of the object
print(ImageTagCreate.to_json())

# convert the object into a dict
image_tag_create_dict = image_tag_create_instance.to_dict()
# create an instance of ImageTagCreate from a dict
image_tag_create_from_dict = ImageTagCreate.from_dict(image_tag_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ImageTagCreateExternal


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image_uri** | **str** | External image URI | 
**version** | **str** | Version of the image tag. | [optional] [default to '']
**description** | **str** | Description of the image tag. | [optional] [default to '']

## Example

```python
from saturn_api.models.image_tag_create_external import ImageTagCreateExternal

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagCreateExternal from a JSON string
image_tag_create_external_instance = ImageTagCreateExternal.from_json(json)
# print the JSON string representation of the object
print(ImageTagCreateExternal.to_json())

# convert the object into a dict
image_tag_create_external_dict = image_tag_create_external_instance.to_dict()
# create an instance of ImageTagCreateExternal from a dict
image_tag_create_external_from_dict = ImageTagCreateExternal.from_dict(image_tag_create_external_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ImageTagUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** | Description of the image tag. | [optional] 
**version** | **str** | Version of the image tag. | [optional] 
**archived** | **bool** | Archive the image tag. Archived tags are not attachable to new resources, but will continue to work on existing resources. | [optional] 

## Example

```python
from saturn_api.models.image_tag_update import ImageTagUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagUpdate from a JSON string
image_tag_update_instance = ImageTagUpdate.from_json(json)
# print the JSON string representation of the object
print(ImageTagUpdate.to_json())

# convert the object into a dict
image_tag_update_dict = image_tag_update_instance.to_dict()
# create an instance of ImageTagUpdate from a dict
image_tag_update_from_dict = ImageTagUpdate.from_dict(image_tag_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



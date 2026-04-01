# ImageTag


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the image tag. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**image** | [**Image**](Image.md) | Image that the tag belongs to. | [readonly] 
**image_uri** | **str** | Image URI for the tag. | [readonly] 
**description** | **str** | Description of the image tag | [readonly] 
**version** | **str** | Version of the image tag. | [readonly] 
**build_data** | [**BuildData**](BuildData.md) | Build data for the image tag. | [optional] [readonly] 
**archived** | **bool** | True if the image tag is archived. Archived tags are not attachable to new resources, but will continue to work on existing resources. | [readonly] 
**is_external** | **bool** | True if the image tag was imported from an external source. | [readonly] 
**status** | **str** | Status of the image tag build. | [readonly] 
**saturn_env** | **str** | Dump of the build env. | [optional] [readonly] 

## Example

```python
from saturn_api.models.image_tag import ImageTag

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTag from a JSON string
image_tag_instance = ImageTag.from_json(json)
# print the JSON string representation of the object
print(ImageTag.to_json())

# convert the object into a dict
image_tag_dict = image_tag_instance.to_dict()
# create an instance of ImageTag from a dict
image_tag_from_dict = ImageTag.from_dict(image_tag_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



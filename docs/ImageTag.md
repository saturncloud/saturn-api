# ImageTag


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] [readonly] 
**created_at** | **str** |  | [optional] [readonly] 
**image** | [**Image**](Image.md) |  | [optional] [readonly] 
**image_uri** | **str** |  | [optional] [readonly] 
**description** | **str** |  | [optional] 
**version** | **str** |  | 
**build_data** | [**BuildData**](BuildData.md) |  | [optional] [readonly] 
**archived** | **bool** |  | [optional] 
**is_external** | **bool** |  | [optional] [readonly] 
**status** | **str** |  | [optional] [readonly] 
**saturn_env** | **str** |  | [optional] [readonly] 
**resource_type** | **str** |  | [optional] [readonly] 
**editable** | **bool** |  | [optional] [readonly] 

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



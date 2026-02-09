# ImageTag


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**image** | [**Image**](Image.md) |  | [readonly] 
**image_uri** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**version** | **str** |  | [readonly] 
**build_data** | [**BuildData**](BuildData.md) |  | [optional] [readonly] 
**archived** | **bool** |  | [readonly] 
**is_external** | **bool** |  | [readonly] 
**status** | **str** |  | [readonly] 
**saturn_env** | **str** |  | [optional] [readonly] 

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



# ImageTagByUri


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**enforce_trusted** | **bool** |  | [optional] [default to True]

## Example

```python
from saturn_api.models.image_tag_by_uri import ImageTagByUri

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagByUri from a JSON string
image_tag_by_uri_instance = ImageTagByUri.from_json(json)
# print the JSON string representation of the object
print(ImageTagByUri.to_json())

# convert the object into a dict
image_tag_by_uri_dict = image_tag_by_uri_instance.to_dict()
# create an instance of ImageTagByUri from a dict
image_tag_by_uri_from_dict = ImageTagByUri.from_dict(image_tag_by_uri_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



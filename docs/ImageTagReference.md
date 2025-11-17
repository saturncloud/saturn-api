# ImageTagReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag_id** | **str** |  | 
**enforce_trusted** | **bool** |  | [optional] [default to True]
**uri** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**name** | **str** |  | 
**version** | **str** |  | 

## Example

```python
from saturn_api.models.image_tag_reference import ImageTagReference

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagReference from a JSON string
image_tag_reference_instance = ImageTagReference.from_json(json)
# print the JSON string representation of the object
print(ImageTagReference.to_json())

# convert the object into a dict
image_tag_reference_dict = image_tag_reference_instance.to_dict()
# create an instance of ImageTagReference from a dict
image_tag_reference_from_dict = ImageTagReference.from_dict(image_tag_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ImageTagByName


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**version** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**enforce_trusted** | **bool** |  | [optional] [default to True]

## Example

```python
from saturn_api.models.image_tag_by_name import ImageTagByName

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagByName from a JSON string
image_tag_by_name_instance = ImageTagByName.from_json(json)
# print the JSON string representation of the object
print(ImageTagByName.to_json())

# convert the object into a dict
image_tag_by_name_dict = image_tag_by_name_instance.to_dict()
# create an instance of ImageTagByName from a dict
image_tag_by_name_from_dict = ImageTagByName.from_dict(image_tag_by_name_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



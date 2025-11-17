# ImageTagById


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag_id** | **str** |  | 
**enforce_trusted** | **bool** |  | [optional] [default to True]

## Example

```python
from saturn_api.models.image_tag_by_id import ImageTagById

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagById from a JSON string
image_tag_by_id_instance = ImageTagById.from_json(json)
# print the JSON string representation of the object
print(ImageTagById.to_json())

# convert the object into a dict
image_tag_by_id_dict = image_tag_by_id_instance.to_dict()
# create an instance of ImageTagById from a dict
image_tag_by_id_from_dict = ImageTagById.from_dict(image_tag_by_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



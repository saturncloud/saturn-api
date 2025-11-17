# ResourceImageTag


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**version** | **str** |  | [readonly] 
**image_uri** | **str** |  | [readonly] 
**image** | [**ResourceImage**](ResourceImage.md) |  | [readonly] 

## Example

```python
from saturn_api.models.resource_image_tag import ResourceImageTag

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceImageTag from a JSON string
resource_image_tag_instance = ResourceImageTag.from_json(json)
# print the JSON string representation of the object
print(ResourceImageTag.to_json())

# convert the object into a dict
resource_image_tag_dict = resource_image_tag_instance.to_dict()
# create an instance of ResourceImageTag from a dict
resource_image_tag_from_dict = ResourceImageTag.from_dict(resource_image_tag_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



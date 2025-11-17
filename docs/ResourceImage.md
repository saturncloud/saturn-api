# ResourceImage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**OwnerName**](OwnerName.md) |  | [readonly] 

## Example

```python
from saturn_api.models.resource_image import ResourceImage

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceImage from a JSON string
resource_image_instance = ResourceImage.from_json(json)
# print the JSON string representation of the object
print(ResourceImage.to_json())

# convert the object into a dict
resource_image_dict = resource_image_instance.to_dict()
# create an instance of ResourceImage from a dict
resource_image_from_dict = ResourceImage.from_dict(resource_image_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



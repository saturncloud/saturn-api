# ImageCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**description** | **str** |  | [optional] [default to '']
**hardware_type** | [**HardwareType**](HardwareType.md) |  | [optional] 
**supports** | **List[str]** |  | [optional] 
**access** | [**ImageAccessLevel**](ImageAccessLevel.md) |  | [optional] 

## Example

```python
from saturn_api.models.image_create import ImageCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ImageCreate from a JSON string
image_create_instance = ImageCreate.from_json(json)
# print the JSON string representation of the object
print(ImageCreate.to_json())

# convert the object into a dict
image_create_dict = image_create_instance.to_dict()
# create an instance of ImageCreate from a dict
image_create_from_dict = ImageCreate.from_dict(image_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



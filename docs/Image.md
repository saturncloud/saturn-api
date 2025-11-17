# Image


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**description** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**hardware_type** | [**HardwareType**](HardwareType.md) |  | 
**supports** | **List[str]** |  | [readonly] 
**access** | [**ImageAccessLevel**](ImageAccessLevel.md) |  | 
**is_base** | **bool** |  | [readonly] 
**is_gpu** | **bool** |  | [readonly] 
**editable** | **bool** |  | [readonly] 
**trusted** | **bool** |  | [readonly] 

## Example

```python
from saturn_api.models.image import Image

# TODO update the JSON string below
json = "{}"
# create an instance of Image from a JSON string
image_instance = Image.from_json(json)
# print the JSON string representation of the object
print(Image.to_json())

# convert the object into a dict
image_dict = image_instance.to_dict()
# create an instance of Image from a dict
image_from_dict = Image.from_dict(image_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



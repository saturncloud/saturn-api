# Image


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the image. | [readonly] 
**name** | **str** | Name of the image. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the image. | [readonly] 
**description** | **str** | Description of the image. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**hardware_type** | [**HardwareType**](HardwareType.md) |  | 
**supports** | **List[str]** | Supported features. | [readonly] 
**access** | [**ImageAccessLevel**](ImageAccessLevel.md) |  | 
**is_base** | **bool** | True if the image is a base image for builds. | [readonly] 
**is_gpu** | **bool** | True if the image support GPU hardware. | [readonly] 
**trusted** | **bool** | True if the image belongs to a trusted source. | [readonly] 

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



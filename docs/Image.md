# Image


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner_id** | **str** |  | [optional] 
**owner_name** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**org_id** | **str** |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] [readonly] 
**name** | **str** |  | 
**description** | **str** |  | [optional] 
**is_gpu** | **bool** |  | 
**supports** | **List[str]** |  | [optional] 
**access** | **str** |  | 
**id** | **str** |  | [optional] [readonly] 
**created_at** | **str** |  | [optional] [readonly] 
**is_base** | **bool** |  | [optional] [readonly] 

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



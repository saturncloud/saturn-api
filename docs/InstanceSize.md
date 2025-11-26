# InstanceSize


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**cores** | **int** |  | 
**memory** | **str** |  | 
**gpu** | **int** |  | [optional] [default to 0]
**gpu_type** | **str** |  | [optional] 
**hardware_type** | [**HardwareType**](HardwareType.md) |  | 
**cloud** | **str** |  | 
**display** | **str** |  | [readonly] 
**display_name** | **str** |  | 
**price_per_hour** | **float** |  | [optional] 
**description** | **str** |  | [optional] [default to '']

## Example

```python
from saturn_api.models.instance_size import InstanceSize

# TODO update the JSON string below
json = "{}"
# create an instance of InstanceSize from a JSON string
instance_size_instance = InstanceSize.from_json(json)
# print the JSON string representation of the object
print(InstanceSize.to_json())

# convert the object into a dict
instance_size_dict = instance_size_instance.to_dict()
# create an instance of InstanceSize from a dict
instance_size_from_dict = InstanceSize.from_dict(instance_size_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# InstanceSize


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**cores** | **int** |  | 
**memory** | **str** |  | 
**gpu** | **int** |  | [optional] [default to 0]
**cloud** | **str** |  | [optional] 
**display** | **str** |  | [optional] [readonly] [default to '']
**display_name** | **str** |  | [optional] [default to '']
**node_role** | **str** |  | [optional] [default to '']
**reserved_memory** | **str** |  | [optional] [default to '512Mi']
**reserved_cpu** | **float** |  | [optional] [default to 1.0]

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



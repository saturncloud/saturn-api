# LimitsPatch


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 
**instance_sizes** | **List[str]** |  | [optional] 
**resource_types** | **List[str]** |  | [optional] 
**num_instances** | **int** |  | [optional] 
**auto_shutoff** | **int** |  | [optional] 
**storage_in_gb** | **int** |  | [optional] 
**num_shared_folders** | **int** |  | [optional] 
**object_storage_bytes** | **int** |  | [optional] 
**object_storage_count** | **int** |  | [optional] 
**hours_per_day** | **int** |  | [optional] 
**hours_per_month** | **int** |  | [optional] 
**hours_forever** | **int** |  | [optional] 

## Example

```python
from saturn_api.models.limits_patch import LimitsPatch

# TODO update the JSON string below
json = "{}"
# create an instance of LimitsPatch from a JSON string
limits_patch_instance = LimitsPatch.from_json(json)
# print the JSON string representation of the object
print(LimitsPatch.to_json())

# convert the object into a dict
limits_patch_dict = limits_patch_instance.to_dict()
# create an instance of LimitsPatch from a dict
limits_patch_from_dict = LimitsPatch.from_dict(limits_patch_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



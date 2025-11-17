# UsageLimitsCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**org_id** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] [default to False]
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
from saturn_api.models.usage_limits_create import UsageLimitsCreate

# TODO update the JSON string below
json = "{}"
# create an instance of UsageLimitsCreate from a JSON string
usage_limits_create_instance = UsageLimitsCreate.from_json(json)
# print the JSON string representation of the object
print(UsageLimitsCreate.to_json())

# convert the object into a dict
usage_limits_create_dict = usage_limits_create_instance.to_dict()
# create an instance of UsageLimitsCreate from a dict
usage_limits_create_from_dict = UsageLimitsCreate.from_dict(usage_limits_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



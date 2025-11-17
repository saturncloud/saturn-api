# UsageLimits


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**org_id** | **str** |  | [readonly] 
**created_at** | **datetime** |  | [readonly] 
**name** | **str** |  | [readonly] 
**is_default** | **bool** |  | [readonly] 
**instance_sizes** | **List[str]** |  | [readonly] 
**resource_types** | **List[str]** |  | [readonly] 
**num_instances** | **int** |  | [readonly] 
**auto_shutoff** | **int** |  | [readonly] 
**storage_in_gb** | **int** |  | [readonly] 
**num_shared_folders** | **int** |  | [readonly] 
**object_storage_bytes** | **int** |  | [readonly] 
**object_storage_count** | **int** |  | [readonly] 
**hours_per_day** | **int** |  | [readonly] 
**hours_per_month** | **int** |  | [readonly] 
**hours_forever** | **int** |  | [readonly] 

## Example

```python
from saturn_api.models.usage_limits import UsageLimits

# TODO update the JSON string below
json = "{}"
# create an instance of UsageLimits from a JSON string
usage_limits_instance = UsageLimits.from_json(json)
# print the JSON string representation of the object
print(UsageLimits.to_json())

# convert the object into a dict
usage_limits_dict = usage_limits_instance.to_dict()
# create an instance of UsageLimits from a dict
usage_limits_from_dict = UsageLimits.from_dict(usage_limits_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



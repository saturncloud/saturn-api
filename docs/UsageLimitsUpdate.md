# UsageLimitsUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the usage limit. | [optional] 
**is_default** | **bool** | Default usage limit for the org. | [optional] 
**instance_sizes** | **List[str]** | Allowed instance sizes. Null if no limits. | [optional] 
**resource_types** | **List[str]** | Allowed resource types. Null if no limits. | [optional] 
**token_factory_enabled** | **bool** | Whether Token Factory is available under this limit. Null inherits the global setting; False hard-disables it. | [optional] 
**num_instances** | **int** | Maximum number of active instances. Null if no limits. | [optional] 
**auto_shutoff** | **int** | Maximum allowed auto-shutoff. Null if no limits. | [optional] 
**storage_in_gb** | **int** | Total allowed storage in GiB. Null if no limits. | [optional] 
**num_shared_folders** | **int** | Maximum number of shared folders. Null if no limits. | [optional] 
**object_storage_bytes** | **int** | Maximum allowed object storage bytes. Null if no limits. | [optional] 
**object_storage_count** | **int** | Maximum number of object storage files. Null if no limits. | [optional] 
**hours_per_day** | **int** | Free compute hours per day. | [optional] 
**hours_per_month** | **int** | Free compute hours per month. | [optional] 
**hours_forever** | **int** | Free compute hours forever (one-time grant). | [optional] 

## Example

```python
from saturn_api.models.usage_limits_update import UsageLimitsUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of UsageLimitsUpdate from a JSON string
usage_limits_update_instance = UsageLimitsUpdate.from_json(json)
# print the JSON string representation of the object
print(UsageLimitsUpdate.to_json())

# convert the object into a dict
usage_limits_update_dict = usage_limits_update_instance.to_dict()
# create an instance of UsageLimitsUpdate from a dict
usage_limits_update_from_dict = UsageLimitsUpdate.from_dict(usage_limits_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



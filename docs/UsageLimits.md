# UsageLimits


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the usage limit. | [readonly] 
**org_id** | **str** | Org ID that the usage limit belongs to. | [readonly] 
**created_at** | **datetime** | Creation timestamp. | [readonly] 
**name** | **str** | Name of the usage limit. | [readonly] 
**is_default** | **bool** | Default usage limit for the org. | [readonly] 
**instance_sizes** | **List[str]** | Allowed instance sizes. Null if no limits. | [readonly] 
**resource_types** | **List[str]** | Allowed resource types. Null if no limits. | [readonly] 
**num_instances** | **int** | Maximum number of active instances. Null if no limits. | [readonly] 
**auto_shutoff** | **int** | Maximum allowed auto-shutoff. Null if no limits. | [readonly] 
**storage_in_gb** | **int** | Total allowed storage in GiB. Null if no limits. | [readonly] 
**num_shared_folders** | **int** | Maximum number of shared folders. Null if no limits. | [readonly] 
**object_storage_bytes** | **int** | Maximum allowed object storage bytes. Null if no limits. | [readonly] 
**object_storage_count** | **int** | Maximum number of object storage files. Null if no limits. | [readonly] 
**hours_per_day** | **int** | Free compute hours per day. | [readonly] 
**hours_per_month** | **int** | Free compute hours per month. | [readonly] 
**hours_forever** | **int** | Free compute hours forever (one-time grant). | [readonly] 

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



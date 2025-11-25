# ObjectStorageUsageStats


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**used_bytes** | **int** |  | [readonly] 
**reserved_bytes** | **int** |  | [readonly] 
**file_count** | **int** |  | [readonly] 
**active_uploads** | **int** |  | [readonly] 
**max_bytes** | **int** |  | [readonly] 
**max_files** | **int** |  | [readonly] 
**max_uploads** | **int** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_usage_stats import ObjectStorageUsageStats

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageUsageStats from a JSON string
object_storage_usage_stats_instance = ObjectStorageUsageStats.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageUsageStats.to_json())

# convert the object into a dict
object_storage_usage_stats_dict = object_storage_usage_stats_instance.to_dict()
# create an instance of ObjectStorageUsageStats from a dict
object_storage_usage_stats_from_dict = ObjectStorageUsageStats.from_dict(object_storage_usage_stats_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



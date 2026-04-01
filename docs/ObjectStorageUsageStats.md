# ObjectStorageUsageStats


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**used_bytes** | **int** | Total used bytes in object storage. | [readonly] 
**reserved_bytes** | **int** | Total reserved bytes for active uploads. | [readonly] 
**file_count** | **int** | Number of files in object storage. | [readonly] 
**active_uploads** | **int** | Number of active uploads in object storage. | [readonly] 
**max_bytes** | **int** | Maximum number of allowed object storage bytes. | [readonly] 
**max_files** | **int** | Maximum number of allowed object storage files. | [readonly] 
**max_uploads** | **int** | Maximum number of allowed concurrent uploads. | [readonly] 

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



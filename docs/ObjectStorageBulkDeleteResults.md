# ObjectStorageBulkDeleteResults


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**failed_file_paths** | **List[str]** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_bulk_delete_results import ObjectStorageBulkDeleteResults

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageBulkDeleteResults from a JSON string
object_storage_bulk_delete_results_instance = ObjectStorageBulkDeleteResults.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageBulkDeleteResults.to_json())

# convert the object into a dict
object_storage_bulk_delete_results_dict = object_storage_bulk_delete_results_instance.to_dict()
# create an instance of ObjectStorageBulkDeleteResults from a dict
object_storage_bulk_delete_results_from_dict = ObjectStorageBulkDeleteResults.from_dict(object_storage_bulk_delete_results_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



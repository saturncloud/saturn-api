# ObjectStorageBulkDownload


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**files** | [**List[ObjectStoragePresignedDownload]**](ObjectStoragePresignedDownload.md) | List of presigned downloads. | [readonly] 

## Example

```python
from saturn_api.models.object_storage_bulk_download import ObjectStorageBulkDownload

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageBulkDownload from a JSON string
object_storage_bulk_download_instance = ObjectStorageBulkDownload.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageBulkDownload.to_json())

# convert the object into a dict
object_storage_bulk_download_dict = object_storage_bulk_download_instance.to_dict()
# create an instance of ObjectStorageBulkDownload from a dict
object_storage_bulk_download_from_dict = ObjectStorageBulkDownload.from_dict(object_storage_bulk_download_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



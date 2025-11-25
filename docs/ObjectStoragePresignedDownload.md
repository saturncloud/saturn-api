# ObjectStoragePresignedDownload


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_path** | **str** |  | [readonly] 
**size** | **int** |  | [readonly] 
**updated_at** | **datetime** |  | [readonly] 
**url** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_presigned_download import ObjectStoragePresignedDownload

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStoragePresignedDownload from a JSON string
object_storage_presigned_download_instance = ObjectStoragePresignedDownload.from_json(json)
# print the JSON string representation of the object
print(ObjectStoragePresignedDownload.to_json())

# convert the object into a dict
object_storage_presigned_download_dict = object_storage_presigned_download_instance.to_dict()
# create an instance of ObjectStoragePresignedDownload from a dict
object_storage_presigned_download_from_dict = ObjectStoragePresignedDownload.from_dict(object_storage_presigned_download_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



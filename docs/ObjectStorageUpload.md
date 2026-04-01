# ObjectStorageUpload


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the object storage upload. | [readonly] 
**file_path** | **str** | File path of the upload in object storage. | [readonly] 
**size** | **int** | Size of the file. | [readonly] 
**part_size** | **int** | Multipart upload size. | [readonly] 
**expires_at** | **datetime** | Expiration timestamp for the upload. | [readonly] 
**copy_source** | [**ObjectStorageCopySource**](ObjectStorageCopySource.md) | Object storage copy source. | [optional] [readonly] 

## Example

```python
from saturn_api.models.object_storage_upload import ObjectStorageUpload

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageUpload from a JSON string
object_storage_upload_instance = ObjectStorageUpload.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageUpload.to_json())

# convert the object into a dict
object_storage_upload_dict = object_storage_upload_instance.to_dict()
# create an instance of ObjectStorageUpload from a dict
object_storage_upload_from_dict = ObjectStorageUpload.from_dict(object_storage_upload_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



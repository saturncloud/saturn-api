# ObjectStorageUpload


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**file_path** | **str** |  | [readonly] 
**size** | **int** |  | [readonly] 
**part_size** | **int** |  | [readonly] 
**expires_at** | **datetime** |  | [readonly] 
**copy_source** | [**ObjectStorageCopySource**](ObjectStorageCopySource.md) |  | [optional] [readonly] 

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



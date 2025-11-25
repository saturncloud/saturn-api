# ObjectStorageUploadCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_path** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**size** | **int** |  | [optional] 
**part_size** | **int** |  | [optional] 
**copy_source** | [**ObjectStorageReference**](ObjectStorageReference.md) |  | [optional] 

## Example

```python
from saturn_api.models.object_storage_upload_create import ObjectStorageUploadCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageUploadCreate from a JSON string
object_storage_upload_create_instance = ObjectStorageUploadCreate.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageUploadCreate.to_json())

# convert the object into a dict
object_storage_upload_create_dict = object_storage_upload_create_instance.to_dict()
# create an instance of ObjectStorageUploadCreate from a dict
object_storage_upload_create_from_dict = ObjectStorageUploadCreate.from_dict(object_storage_upload_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



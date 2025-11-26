# ObjectStoragePresignedUpload


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**object_storage_upload_id** | **str** |  | [readonly] 
**is_copy** | **bool** |  | [readonly] 
**parts** | [**List[ObjectStoragePresignedPart]**](ObjectStoragePresignedPart.md) |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_presigned_upload import ObjectStoragePresignedUpload

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStoragePresignedUpload from a JSON string
object_storage_presigned_upload_instance = ObjectStoragePresignedUpload.from_json(json)
# print the JSON string representation of the object
print(ObjectStoragePresignedUpload.to_json())

# convert the object into a dict
object_storage_presigned_upload_dict = object_storage_presigned_upload_instance.to_dict()
# create an instance of ObjectStoragePresignedUpload from a dict
object_storage_presigned_upload_from_dict = ObjectStoragePresignedUpload.from_dict(object_storage_presigned_upload_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



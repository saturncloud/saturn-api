# ObjectStorageUploadList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uploads** | [**List[ObjectStorageUpload]**](ObjectStorageUpload.md) | List of object storage uploads. | [readonly] 

## Example

```python
from saturn_api.models.object_storage_upload_list import ObjectStorageUploadList

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageUploadList from a JSON string
object_storage_upload_list_instance = ObjectStorageUploadList.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageUploadList.to_json())

# convert the object into a dict
object_storage_upload_list_dict = object_storage_upload_list_instance.to_dict()
# create an instance of ObjectStorageUploadList from a dict
object_storage_upload_list_from_dict = ObjectStorageUploadList.from_dict(object_storage_upload_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



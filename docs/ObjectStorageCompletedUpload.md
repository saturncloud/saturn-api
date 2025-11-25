# ObjectStorageCompletedUpload


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parts** | [**List[ObjectStorageCompletePart]**](ObjectStorageCompletePart.md) |  | 

## Example

```python
from saturn_api.models.object_storage_completed_upload import ObjectStorageCompletedUpload

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageCompletedUpload from a JSON string
object_storage_completed_upload_instance = ObjectStorageCompletedUpload.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageCompletedUpload.to_json())

# convert the object into a dict
object_storage_completed_upload_dict = object_storage_completed_upload_instance.to_dict()
# create an instance of ObjectStorageCompletedUpload from a dict
object_storage_completed_upload_from_dict = ObjectStorageCompletedUpload.from_dict(object_storage_completed_upload_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



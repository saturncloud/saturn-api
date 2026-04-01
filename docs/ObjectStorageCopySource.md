# ObjectStorageCopySource


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_path** | **str** | File path of the source in object storage. | [readonly] 
**owner_name** | **str** | Name of the owner of the source. | [readonly] 

## Example

```python
from saturn_api.models.object_storage_copy_source import ObjectStorageCopySource

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageCopySource from a JSON string
object_storage_copy_source_instance = ObjectStorageCopySource.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageCopySource.to_json())

# convert the object into a dict
object_storage_copy_source_dict = object_storage_copy_source_instance.to_dict()
# create an instance of ObjectStorageCopySource from a dict
object_storage_copy_source_from_dict = ObjectStorageCopySource.from_dict(object_storage_copy_source_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



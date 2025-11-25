# ObjectStorageFileDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_path** | **str** |  | [readonly] 
**size** | **int** |  | [readonly] 
**created_at** | **datetime** |  | [readonly] 
**updated_at** | **datetime** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_file_details import ObjectStorageFileDetails

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageFileDetails from a JSON string
object_storage_file_details_instance = ObjectStorageFileDetails.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageFileDetails.to_json())

# convert the object into a dict
object_storage_file_details_dict = object_storage_file_details_instance.to_dict()
# create an instance of ObjectStorageFileDetails from a dict
object_storage_file_details_from_dict = ObjectStorageFileDetails.from_dict(object_storage_file_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ObjectStorageList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dirs** | [**List[ObjectStorageDirDetails]**](ObjectStorageDirDetails.md) |  | [readonly] 
**files** | [**List[ObjectStorageFileDetails]**](ObjectStorageFileDetails.md) |  | [readonly] 
**next_last_key** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_list import ObjectStorageList

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageList from a JSON string
object_storage_list_instance = ObjectStorageList.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageList.to_json())

# convert the object into a dict
object_storage_list_dict = object_storage_list_instance.to_dict()
# create an instance of ObjectStorageList from a dict
object_storage_list_from_dict = ObjectStorageList.from_dict(object_storage_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



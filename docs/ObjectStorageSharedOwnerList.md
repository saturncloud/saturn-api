# ObjectStorageSharedOwnerList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owners** | [**List[ObjectStorageSharedOwner]**](ObjectStorageSharedOwner.md) |  | [readonly] 
**next_last_key** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_shared_owner_list import ObjectStorageSharedOwnerList

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageSharedOwnerList from a JSON string
object_storage_shared_owner_list_instance = ObjectStorageSharedOwnerList.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageSharedOwnerList.to_json())

# convert the object into a dict
object_storage_shared_owner_list_dict = object_storage_shared_owner_list_instance.to_dict()
# create an instance of ObjectStorageSharedOwnerList from a dict
object_storage_shared_owner_list_from_dict = ObjectStorageSharedOwnerList.from_dict(object_storage_shared_owner_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



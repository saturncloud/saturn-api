# ObjectStorageSharedOwner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**count** | **int** |  | [readonly] 

## Example

```python
from saturn_api.models.object_storage_shared_owner import ObjectStorageSharedOwner

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageSharedOwner from a JSON string
object_storage_shared_owner_instance = ObjectStorageSharedOwner.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageSharedOwner.to_json())

# convert the object into a dict
object_storage_shared_owner_dict = object_storage_shared_owner_instance.to_dict()
# create an instance of ObjectStorageSharedOwner from a dict
object_storage_shared_owner_from_dict = ObjectStorageSharedOwner.from_dict(object_storage_shared_owner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



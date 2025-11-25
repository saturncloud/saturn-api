# ObjectStorageBulkReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_paths** | **List[str]** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 

## Example

```python
from saturn_api.models.object_storage_bulk_reference import ObjectStorageBulkReference

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageBulkReference from a JSON string
object_storage_bulk_reference_instance = ObjectStorageBulkReference.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageBulkReference.to_json())

# convert the object into a dict
object_storage_bulk_reference_dict = object_storage_bulk_reference_instance.to_dict()
# create an instance of ObjectStorageBulkReference from a dict
object_storage_bulk_reference_from_dict = ObjectStorageBulkReference.from_dict(object_storage_bulk_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



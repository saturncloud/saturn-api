# ObjectStorageReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**file_path** | **str** | File path in object storage. | 
**owner** | [**OwnerReference**](OwnerReference.md) | Owner of the file. | [optional] 

## Example

```python
from saturn_api.models.object_storage_reference import ObjectStorageReference

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageReference from a JSON string
object_storage_reference_instance = ObjectStorageReference.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageReference.to_json())

# convert the object into a dict
object_storage_reference_dict = object_storage_reference_instance.to_dict()
# create an instance of ObjectStorageReference from a dict
object_storage_reference_from_dict = ObjectStorageReference.from_dict(object_storage_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ObjectStorageCompletePart


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**etag** | **str** |  | 
**part_number** | **int** |  | 

## Example

```python
from saturn_api.models.object_storage_complete_part import ObjectStorageCompletePart

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageCompletePart from a JSON string
object_storage_complete_part_instance = ObjectStorageCompletePart.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageCompletePart.to_json())

# convert the object into a dict
object_storage_complete_part_dict = object_storage_complete_part_instance.to_dict()
# create an instance of ObjectStorageCompletePart from a dict
object_storage_complete_part_from_dict = ObjectStorageCompletePart.from_dict(object_storage_complete_part_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



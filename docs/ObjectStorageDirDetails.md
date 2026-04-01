# ObjectStorageDirDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**prefix** | **str** | Directory path. | [readonly] 

## Example

```python
from saturn_api.models.object_storage_dir_details import ObjectStorageDirDetails

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStorageDirDetails from a JSON string
object_storage_dir_details_instance = ObjectStorageDirDetails.from_json(json)
# print the JSON string representation of the object
print(ObjectStorageDirDetails.to_json())

# convert the object into a dict
object_storage_dir_details_dict = object_storage_dir_details_instance.to_dict()
# create an instance of ObjectStorageDirDetails from a dict
object_storage_dir_details_from_dict = ObjectStorageDirDetails.from_dict(object_storage_dir_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ObjectStoragePresignedPart


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | Presigned part upload URL. | [readonly] 
**part_number** | **int** | Part number. | [readonly] 
**size** | **int** | Size of the part. | [readonly] 
**headers** | **Dict[str, str]** | Headers for the upload request. | [readonly] 

## Example

```python
from saturn_api.models.object_storage_presigned_part import ObjectStoragePresignedPart

# TODO update the JSON string below
json = "{}"
# create an instance of ObjectStoragePresignedPart from a JSON string
object_storage_presigned_part_instance = ObjectStoragePresignedPart.from_json(json)
# print the JSON string representation of the object
print(ObjectStoragePresignedPart.to_json())

# convert the object into a dict
object_storage_presigned_part_dict = object_storage_presigned_part_instance.to_dict()
# create an instance of ObjectStoragePresignedPart from a dict
object_storage_presigned_part_from_dict = ObjectStoragePresignedPart.from_dict(object_storage_presigned_part_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



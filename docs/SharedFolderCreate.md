# SharedFolderCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**access** | [**SharedFolderAccessLevel**](SharedFolderAccessLevel.md) |  | [optional] 
**access_mode** | [**SharedAccessMode**](SharedAccessMode.md) |  | [optional] 
**is_external** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.shared_folder_create import SharedFolderCreate

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderCreate from a JSON string
shared_folder_create_instance = SharedFolderCreate.from_json(json)
# print the JSON string representation of the object
print(SharedFolderCreate.to_json())

# convert the object into a dict
shared_folder_create_dict = shared_folder_create_instance.to_dict()
# create an instance of SharedFolderCreate from a dict
shared_folder_create_from_dict = SharedFolderCreate.from_dict(shared_folder_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



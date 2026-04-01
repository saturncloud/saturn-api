# SharedFolderUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the shared folder. | [optional] 
**access** | [**SharedFolderAccessLevel**](SharedFolderAccessLevel.md) |  | [optional] 

## Example

```python
from saturn_api.models.shared_folder_update import SharedFolderUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderUpdate from a JSON string
shared_folder_update_instance = SharedFolderUpdate.from_json(json)
# print the JSON string representation of the object
print(SharedFolderUpdate.to_json())

# convert the object into a dict
shared_folder_update_dict = shared_folder_update_instance.to_dict()
# create an instance of SharedFolderUpdate from a dict
shared_folder_update_from_dict = SharedFolderUpdate.from_dict(shared_folder_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



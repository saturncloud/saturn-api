# SharedFolderList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shared_folders** | [**List[SharedFolder]**](SharedFolder.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.shared_folder_list import SharedFolderList

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderList from a JSON string
shared_folder_list_instance = SharedFolderList.from_json(json)
# print the JSON string representation of the object
print(SharedFolderList.to_json())

# convert the object into a dict
shared_folder_list_dict = shared_folder_list_instance.to_dict()
# create an instance of SharedFolderList from a dict
shared_folder_list_from_dict = SharedFolderList.from_dict(shared_folder_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



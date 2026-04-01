# SharedFolder


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the shared folder. | [readonly] 
**name** | **str** | Name of the shared folder. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the shared folder. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**access** | [**SharedFolderAccessLevel**](SharedFolderAccessLevel.md) |  | 
**access_mode** | [**SharedAccessMode**](SharedAccessMode.md) |  | 
**is_external** | **bool** | True if the shared folder is externally managed. | [readonly] 
**editable** | **bool** | True if the shard folder is editable by the authenticated user/group. | [readonly] 

## Example

```python
from saturn_api.models.shared_folder import SharedFolder

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolder from a JSON string
shared_folder_instance = SharedFolder.from_json(json)
# print the JSON string representation of the object
print(SharedFolder.to_json())

# convert the object into a dict
shared_folder_dict = shared_folder_instance.to_dict()
# create an instance of SharedFolder from a dict
shared_folder_from_dict = SharedFolder.from_dict(shared_folder_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



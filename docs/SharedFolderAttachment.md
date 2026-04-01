# SharedFolderAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the shared folder attachment | [readonly] 
**shared_folder** | [**SharedFolder**](SharedFolder.md) | Shared folder that is attached to the resource. | [readonly] 
**workspace_id** | **str** | Workspace ID of the shared folder attachment. | [readonly] 
**deployment_id** | **str** | Deployment ID of the shared folder attachment. | [readonly] 
**path** | **str** | Mount path of the shared folder in the resource. | [readonly] 

## Example

```python
from saturn_api.models.shared_folder_attachment import SharedFolderAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderAttachment from a JSON string
shared_folder_attachment_instance = SharedFolderAttachment.from_json(json)
# print the JSON string representation of the object
print(SharedFolderAttachment.to_json())

# convert the object into a dict
shared_folder_attachment_dict = shared_folder_attachment_instance.to_dict()
# create an instance of SharedFolderAttachment from a dict
shared_folder_attachment_from_dict = SharedFolderAttachment.from_dict(shared_folder_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



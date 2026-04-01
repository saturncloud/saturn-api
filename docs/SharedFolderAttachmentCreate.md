# SharedFolderAttachmentCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shared_folder_id** | **str** | Shared folder ID to attach to the resource. | 
**resource** | [**ResourceReference**](ResourceReference.md) | Reference to a resource. | 
**path** | **str** | Mount path of the shared folder in the resource. | [optional] 

## Example

```python
from saturn_api.models.shared_folder_attachment_create import SharedFolderAttachmentCreate

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderAttachmentCreate from a JSON string
shared_folder_attachment_create_instance = SharedFolderAttachmentCreate.from_json(json)
# print the JSON string representation of the object
print(SharedFolderAttachmentCreate.to_json())

# convert the object into a dict
shared_folder_attachment_create_dict = shared_folder_attachment_create_instance.to_dict()
# create an instance of SharedFolderAttachmentCreate from a dict
shared_folder_attachment_create_from_dict = SharedFolderAttachmentCreate.from_dict(shared_folder_attachment_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



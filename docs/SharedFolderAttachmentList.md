# SharedFolderAttachmentList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shared_folder_attachments** | [**List[SharedFolderAttachment]**](SharedFolderAttachment.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.shared_folder_attachment_list import SharedFolderAttachmentList

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderAttachmentList from a JSON string
shared_folder_attachment_list_instance = SharedFolderAttachmentList.from_json(json)
# print the JSON string representation of the object
print(SharedFolderAttachmentList.to_json())

# convert the object into a dict
shared_folder_attachment_list_dict = shared_folder_attachment_list_instance.to_dict()
# create an instance of SharedFolderAttachmentList from a dict
shared_folder_attachment_list_from_dict = SharedFolderAttachmentList.from_dict(shared_folder_attachment_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



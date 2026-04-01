# ExternalRepoAttachmentList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_repo_attachments** | [**List[ExternalRepoAttachment]**](ExternalRepoAttachment.md) | List of external repository attachments. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.external_repo_attachment_list import ExternalRepoAttachmentList

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachmentList from a JSON string
external_repo_attachment_list_instance = ExternalRepoAttachmentList.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachmentList.to_json())

# convert the object into a dict
external_repo_attachment_list_dict = external_repo_attachment_list_instance.to_dict()
# create an instance of ExternalRepoAttachmentList from a dict
external_repo_attachment_list_from_dict = ExternalRepoAttachmentList.from_dict(external_repo_attachment_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ExternalRepoAttachmentCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_repo_id** | **str** | ID of the external repository to attach. | 
**resource** | [**ResourceReference**](ResourceReference.md) | Reference to a resource to attach to. | 
**path** | **str** | Path of the repository in the resource it is attached to. | [optional] 
**on_restart** | **str** | Repository clone behavior on restart. Preserve only applies when path is in a persistent volume. | [optional] [default to 'preserve changes']
**ref** | **str** | Git version reference on the repository. | [optional] 
**ref_type** | **str** | Type of the git ref. | [optional] [default to 'branch']

## Example

```python
from saturn_api.models.external_repo_attachment_create import ExternalRepoAttachmentCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachmentCreate from a JSON string
external_repo_attachment_create_instance = ExternalRepoAttachmentCreate.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachmentCreate.to_json())

# convert the object into a dict
external_repo_attachment_create_dict = external_repo_attachment_create_instance.to_dict()
# create an instance of ExternalRepoAttachmentCreate from a dict
external_repo_attachment_create_from_dict = ExternalRepoAttachmentCreate.from_dict(external_repo_attachment_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



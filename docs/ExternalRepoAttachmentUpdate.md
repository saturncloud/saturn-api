# ExternalRepoAttachmentUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** | Path of the repository in the resource it is attached to. | [optional] 
**on_restart** | **str** | Repository clone behavior on restart. Preserve only applies when path is in a persistent volume. | [optional] 
**ref** | **str** | Git version reference on the repository. | [optional] 
**ref_type** | **str** | Type of the git ref. | [optional] 

## Example

```python
from saturn_api.models.external_repo_attachment_update import ExternalRepoAttachmentUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachmentUpdate from a JSON string
external_repo_attachment_update_instance = ExternalRepoAttachmentUpdate.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachmentUpdate.to_json())

# convert the object into a dict
external_repo_attachment_update_dict = external_repo_attachment_update_instance.to_dict()
# create an instance of ExternalRepoAttachmentUpdate from a dict
external_repo_attachment_update_from_dict = ExternalRepoAttachmentUpdate.from_dict(external_repo_attachment_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



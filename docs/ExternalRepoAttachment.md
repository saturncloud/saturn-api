# ExternalRepoAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the external repository attachment. | [readonly] 
**has_sshkey** | **bool** | True if the repository has an attached SSH Private Key | [readonly] 
**path** | **str** | Path of the repository in the resource it is attached to. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**external_repo_id** | **str** | ID of the external repository to attach. | [readonly] 
**remote_url** | **str** | Repository URL | [readonly] 
**deployment_id** | **str** | Deployment ID the repository is attached to. | [optional] [readonly] 
**workspace_id** | **str** | Workspace ID the repository is attached to. | [optional] [readonly] 
**on_restart** | **str** | Repository clone behavior on restart. Preserve only applies when path is in a persistent volume. | [readonly] 
**ref** | **str** | Git version reference on the repository. | [optional] [readonly] 
**ref_type** | **str** | Type of the git ref. | [optional] [readonly] 

## Example

```python
from saturn_api.models.external_repo_attachment import ExternalRepoAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachment from a JSON string
external_repo_attachment_instance = ExternalRepoAttachment.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachment.to_json())

# convert the object into a dict
external_repo_attachment_dict = external_repo_attachment_instance.to_dict()
# create an instance of ExternalRepoAttachment from a dict
external_repo_attachment_from_dict = ExternalRepoAttachment.from_dict(external_repo_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



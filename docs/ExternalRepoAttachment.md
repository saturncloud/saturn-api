# ExternalRepoAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**has_sshkey** | **bool** |  | [readonly] 
**path** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**external_repo_id** | **str** |  | [readonly] 
**remote_url** | **str** |  | [readonly] 
**deployment_id** | **str** |  | [optional] [readonly] 
**workspace_id** | **str** |  | [optional] [readonly] 
**on_restart** | **str** |  | [readonly] 
**ref** | **str** |  | [optional] [readonly] 
**ref_type** | **str** |  | [optional] [readonly] 

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



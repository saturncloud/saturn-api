# ExternalRepoAttachmentPartial


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] [readonly] 
**has_sshkey** | **bool** |  | [optional] [readonly] 
**path** | **str** |  | 
**created_at** | **str** |  | [optional] [readonly] 
**external_repo_id** | **str** |  | 
**remote_url** | **str** |  | [optional] [readonly] 
**on_restart** | **str** |  | [optional] 
**ref** | **str** |  | [optional] 
**ref_type** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.external_repo_attachment_partial import ExternalRepoAttachmentPartial

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachmentPartial from a JSON string
external_repo_attachment_partial_instance = ExternalRepoAttachmentPartial.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachmentPartial.to_json())

# convert the object into a dict
external_repo_attachment_partial_dict = external_repo_attachment_partial_instance.to_dict()
# create an instance of ExternalRepoAttachmentPartial from a dict
external_repo_attachment_partial_from_dict = ExternalRepoAttachmentPartial.from_dict(external_repo_attachment_partial_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



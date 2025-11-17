# ExternalRepoAttachmentUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** |  | [optional] 
**on_restart** | **str** |  | [optional] 
**ref** | **str** |  | [optional] 
**ref_type** | **str** |  | [optional] 

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



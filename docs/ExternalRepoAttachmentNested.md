# ExternalRepoAttachmentNested


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **str** |  | [optional] 
**on_restart** | **str** |  | [optional] 
**ref** | **str** |  | [optional] 
**ref_type** | **str** |  | [optional] 
**external_repo_id** | **str** |  | 

## Example

```python
from saturn_api.models.external_repo_attachment_nested import ExternalRepoAttachmentNested

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachmentNested from a JSON string
external_repo_attachment_nested_instance = ExternalRepoAttachmentNested.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachmentNested.to_json())

# convert the object into a dict
external_repo_attachment_nested_dict = external_repo_attachment_nested_instance.to_dict()
# create an instance of ExternalRepoAttachmentNested from a dict
external_repo_attachment_nested_from_dict = ExternalRepoAttachmentNested.from_dict(external_repo_attachment_nested_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



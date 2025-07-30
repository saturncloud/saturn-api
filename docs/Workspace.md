# Workspace


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner_id** | **str** |  | [optional] 
**owner_name** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**org_id** | **str** |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] [readonly] 
**name** | **str** |  | 
**image** | **str** |  | [optional] 
**image_tag_id** | **str** |  | [optional] 
**image_enforce_trusted** | **bool** |  | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [optional] 
**ide** | **str** |  | [optional] 
**start_script** | **str** |  | [optional] 
**environment_variables** | **Dict[str, str]** |  | [optional] 
**working_dir** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**disk_space** | **str** |  | [optional] 
**instance_size** | **str** |  | [optional] 
**auto_shutoff** | **str** |  | [optional] 
**start_ssh** | **bool** |  | [optional] 
**is_spot** | **bool** |  | [optional] 
**subdomain** | **str** |  | [optional] 
**start_dind** | **bool** |  | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentPartial]**](ExternalRepoAttachmentPartial.md) |  | [optional] 
**id** | **str** |  | [optional] [readonly] 
**image_tag** | [**ResourceImageTag**](ResourceImageTag.md) |  | [optional] [readonly] 
**resource_type** | **str** |  | [optional] [readonly] 
**size_display** | **str** |  | [optional] [readonly] 
**k8s_name** | **str** |  | [optional] [readonly] 
**require_restart** | **bool** |  | [optional] [readonly] 
**created_at** | **str** |  | [optional] [readonly] 
**updated_at** | **str** |  | [optional] [readonly] 
**started_at** | **str** |  | [optional] [readonly] 
**self_destruct** | **bool** |  | [optional] 

## Example

```python
from saturn_api.models.workspace import Workspace

# TODO update the JSON string below
json = "{}"
# create an instance of Workspace from a JSON string
workspace_instance = Workspace.from_json(json)
# print the JSON string representation of the object
print(Workspace.to_json())

# convert the object into a dict
workspace_dict = workspace_instance.to_dict()
# create an instance of Workspace from a dict
workspace_from_dict = Workspace.from_dict(workspace_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



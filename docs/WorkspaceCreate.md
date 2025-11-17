# WorkspaceCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**description** | **str** |  | [optional] [default to '']
**tags** | **Dict[str, str]** |  | [optional] 
**instance_size** | **str** |  | [optional] 
**image_uri** | **str** |  | [optional] 
**image_tag_id** | **str** |  | [optional] 
**image_enforce_trusted** | **bool** |  | [optional] [default to True]
**environment_variables** | **Dict[str, str]** |  | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) |  | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [optional] 
**start_script** | **str** |  | [optional] 
**working_dir** | **str** |  | [optional] [default to '/home/jovyan/workspace']
**is_spot** | **bool** |  | [optional] [default to False]
**start_dind** | **bool** |  | [optional] [default to False]
**disk_space** | **str** |  | [optional] 
**subdomain** | **str** |  | [optional] 
**auto_shutoff** | **str** |  | [optional] [default to '1 hour']
**start_ssh** | **bool** |  | [optional] [default to False]
**ide** | **str** |  | [optional] [default to 'jupyter']
**self_destruct** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.workspace_create import WorkspaceCreate

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceCreate from a JSON string
workspace_create_instance = WorkspaceCreate.from_json(json)
# print the JSON string representation of the object
print(WorkspaceCreate.to_json())

# convert the object into a dict
workspace_create_dict = workspace_create_instance.to_dict()
# create an instance of WorkspaceCreate from a dict
workspace_create_from_dict = WorkspaceCreate.from_dict(workspace_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



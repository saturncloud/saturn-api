# WorkspaceCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the workspace. | 
**owner** | [**OwnerReference**](OwnerReference.md) | Owner of the workspace. | [optional] 
**description** | **str** | Description of the workspace. | [optional] [default to '']
**tags** | **Dict[str, str]** | Descriptive tags for the workspace. | [optional] 
**instance_size** | **str** | Instance size of the workspace. | [optional] 
**image_uri** | **str** | URI of the image to attach. | [optional] 
**image_tag_id** | **str** | Image tag ID to attach. | [optional] 
**image_enforce_trusted** | **bool** | Enable image trust validation before attaching. | [optional] [default to True]
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) | List of external repo attachments for the workspace. | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [optional] 
**start_script** | **str** | Shell script to run on start before the primary command. | [optional] 
**working_dir** | **str** | Initial working directory for the workspace. | [optional] [default to '/home/jovyan/workspace']
**is_spot** | **bool** | Enables running on spot instance sizes. | [optional] [default to False]
**start_dind** | **bool** | Enables docker-in-docker. | [optional] [default to False]
**disk_space** | **str** | Size of the persistent volume attached to the workspace. | [optional] 
**subdomain** | **str** | Subdomain of the workspace URL. | [optional] 
**auto_shutoff** | **str** | Duration of inactivity before workspace is automatically stopped. | [optional] [default to '1 hour']
**start_ssh** | **bool** | Enable SSH access on the deployment. | [optional] [default to False]
**ide** | **str** | IDE of the workspace. | [optional] [default to 'jupyter']
**self_destruct** | **bool** | Auto delete the workspace on stop. | [optional] [default to False]

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



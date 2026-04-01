# WorkspaceUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the workspace. | [optional] 
**description** | **str** | Description of the workspace. | [optional] 
**tags** | **Dict[str, str]** | Descriptive tags for the workspace. | [optional] 
**image_uri** | **str** | URI of the image to attach. | [optional] 
**image_tag_id** | **str** | Image tag ID to attach. | [optional] 
**image_enforce_trusted** | **bool** | Enable image trust validation before attaching. | [optional] [default to True]
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) | List of external repo attachments. | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [optional] 
**start_script** | **str** | Shell script that runs on start before the primary command. | [optional] 
**working_dir** | **str** | Initial working directory. | [optional] 
**instance_size** | **str** | Instance size of the workspace. | [optional] 
**is_spot** | **bool** | Enables running on spot instance sizes. | [optional] 
**start_dind** | **bool** | Enables docker-in-docker. | [optional] 
**disk_space** | **str** | Size of the persistent volume attached to the workspace. | [optional] 
**subdomain** | **str** | Subdomain of the workspace URL. | [optional] 
**auto_shutoff** | **str** | Duration of inactivity before workspace is automatically stopped. | [optional] 
**start_ssh** | **bool** | Enable SSH access on the deployment. | [optional] 

## Example

```python
from saturn_api.models.workspace_update import WorkspaceUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceUpdate from a JSON string
workspace_update_instance = WorkspaceUpdate.from_json(json)
# print the JSON string representation of the object
print(WorkspaceUpdate.to_json())

# convert the object into a dict
workspace_update_dict = workspace_update_instance.to_dict()
# create an instance of WorkspaceUpdate from a dict
workspace_update_from_dict = WorkspaceUpdate.from_dict(workspace_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



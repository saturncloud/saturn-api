# Workspace


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the workspace | [readonly] 
**name** | **str** | Name of the workspace. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the workspace. | [readonly] 
**description** | **str** | Description of the workspace. | [readonly] 
**tags** | **Dict[str, str]** | Descriptive tags for the workspace. | [optional] 
**image_tag** | [**ImageTag**](ImageTag.md) | Image tag that is attached to the workspace. | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [readonly] 
**ide** | **str** | IDE of the workspace | [readonly] 
**start_script** | **str** | Shell script that runs on start before the primary command. | [readonly] 
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [readonly] 
**working_dir** | **str** | Initial working directory. | [readonly] 
**disk_space** | **str** | Size of the persistent volume attached to the workspace. | [readonly] 
**instance_size** | **str** | Instance size of the workspace. | [readonly] 
**auto_shutoff** | **str** | Duration of inactivity before workspace is automatically stopped. | [readonly] 
**start_ssh** | **bool** | Enable SSH access on the workspace. | [readonly] 
**is_spot** | **bool** | Enables running on spot instance sizes. | [readonly] 
**subdomain** | **str** | Subdomain for the workspace URL. | [readonly] 
**start_dind** | **bool** | Enables docker-in-docker. | [readonly] 
**resource_type** | **str** | Resource type of the workspace. | [readonly] 
**size_display** | **str** | Description of the instance size. | [readonly] 
**k8s_name** | **str** | Unique name for associated kubernetes objects. | [readonly] 
**require_restart** | **bool** | True if an update was applied that requires restart to take effect | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**updated_at** | **str** | Updated timestamp. | [readonly] 
**started_at** | **str** | Last started timestamp. | [readonly] 
**self_destruct** | **bool** | Auto delete the workspace on stop. | [optional] [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) | Dask cluster attached to the  workspace. | [optional] [readonly] 
**status** | **str** | Current status of the workspace. | [readonly] 
**debug_mode** | **bool** | True if workspace is running in debug mode. | [readonly] 
**url** | **str** | External URL for the workspace. | [readonly] 
**ssh_url** | **str** | External SSH URL for the workspace. | [readonly] 

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



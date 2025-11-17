# DeploymentSpec


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**description** | **str** |  | [optional] 
**tags** | **Dict[str, str]** |  | [optional] 
**image** | [**ImageTagReference**](ImageTagReference.md) |  | 
**instance_type** | **str** |  | 
**environment_variables** | **Dict[str, str]** |  | [optional] 
**working_directory** | **str** |  | [optional] 
**extra_packages** | [**ExtraPackagesRecipe**](ExtraPackagesRecipe.md) |  | [optional] 
**start_script** | **str** |  | [optional] 
**token_scope** | **str** |  | [optional] 
**dask_cluster** | [**DaskClusterAttachment**](DaskClusterAttachment.md) |  | [optional] 
**git_repositories** | [**List[ExternalRepoAttachmentRecipe]**](ExternalRepoAttachmentRecipe.md) |  | [optional] 
**secrets** | [**List[SecretAttachmentRecipe]**](SecretAttachmentRecipe.md) |  | [optional] 
**shared_folders** | [**List[SharedFolderAttachmentRecipe]**](SharedFolderAttachmentRecipe.md) |  | [optional] 
**start_dind** | **bool** |  | [optional] 
**status** | **str** |  | [optional] 
**command** | **str** |  | 
**scale** | **int** |  | [optional] [default to 1]
**start_ssh** | **bool** |  | [optional] [default to False]
**use_spot_instance** | **bool** |  | [optional] [default to False]
**routes** | [**List[DeploymentRouteRecipe]**](DeploymentRouteRecipe.md) |  | [optional] 
**viewers** | [**List[ViewerRecipe]**](ViewerRecipe.md) |  | [optional] 

## Example

```python
from saturn_api.models.deployment_spec import DeploymentSpec

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentSpec from a JSON string
deployment_spec_instance = DeploymentSpec.from_json(json)
# print the JSON string representation of the object
print(DeploymentSpec.to_json())

# convert the object into a dict
deployment_spec_dict = deployment_spec_instance.to_dict()
# create an instance of DeploymentSpec from a dict
deployment_spec_from_dict = DeploymentSpec.from_dict(deployment_spec_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



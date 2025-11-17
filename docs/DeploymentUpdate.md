# DeploymentUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**tags** | **Dict[str, str]** |  | [optional] 
**image_uri** | **str** |  | [optional] 
**image_tag_id** | **str** |  | [optional] 
**image_enforce_trusted** | **bool** |  | [optional] [default to True]
**environment_variables** | **Dict[str, str]** |  | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) |  | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [optional] 
**start_script** | **str** |  | [optional] 
**working_dir** | **str** |  | [optional] 
**instance_size** | **str** |  | [optional] 
**is_spot** | **bool** |  | [optional] 
**start_dind** | **bool** |  | [optional] 
**command** | **str** |  | [optional] 
**scale** | **int** |  | [optional] 
**subdomain** | **str** |  | [optional] 
**healthcheck** | **str** |  | [optional] 
**start_ssh** | **bool** |  | [optional] 

## Example

```python
from saturn_api.models.deployment_update import DeploymentUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentUpdate from a JSON string
deployment_update_instance = DeploymentUpdate.from_json(json)
# print the JSON string representation of the object
print(DeploymentUpdate.to_json())

# convert the object into a dict
deployment_update_dict = deployment_update_instance.to_dict()
# create an instance of DeploymentUpdate from a dict
deployment_update_from_dict = DeploymentUpdate.from_dict(deployment_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



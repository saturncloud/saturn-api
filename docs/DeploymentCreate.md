# DeploymentCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the deployment. | 
**owner** | [**OwnerReference**](OwnerReference.md) | Owner of the deployment. | [optional] 
**description** | **str** | Description of the deployment. | [optional] [default to '']
**tags** | **Dict[str, str]** | Descriptive tags for the deployment. | [optional] 
**instance_size** | **str** | Instance size of the deployment. | [optional] 
**image_uri** | **str** | URI of the image to attach. | [optional] 
**image_tag_id** | **str** | Image tag ID to attach. | [optional] 
**image_enforce_trusted** | **bool** | Enable image trust validation before attaching. | [optional] [default to True]
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) | List of external repo attachments for the deployment. | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [optional] 
**start_script** | **str** | Shell script to run on start before the primary command. | [optional] 
**working_dir** | **str** | Initial working directory for the deployment. | [optional] [default to '/home/jovyan/workspace']
**is_spot** | **bool** | Enables running on spot instance sizes. | [optional] [default to False]
**start_dind** | **bool** | Enables docker-in-docker. | [optional] [default to False]
**command** | **str** | Command that runs on start. | 
**scale** | **int** | Number of pod replicas. | [optional] [default to 1]
**subdomain** | **str** | Subdomain for the deployment URL. | [optional] 
**healthcheck** | **str** | Healthcheck path on the deployment&#39;s primary port. | [optional] 
**start_ssh** | **bool** | Enable SSH access on the deployment. | [optional] [default to False]

## Example

```python
from saturn_api.models.deployment_create import DeploymentCreate

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentCreate from a JSON string
deployment_create_instance = DeploymentCreate.from_json(json)
# print the JSON string representation of the object
print(DeploymentCreate.to_json())

# convert the object into a dict
deployment_create_dict = deployment_create_instance.to_dict()
# create an instance of DeploymentCreate from a dict
deployment_create_from_dict = DeploymentCreate.from_dict(deployment_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



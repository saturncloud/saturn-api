# Deployment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the deployment. | [readonly] 
**name** | **str** | Name of the deployment. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the deployment. | [readonly] 
**command** | **str** | Command that runs on start. | [readonly] 
**description** | **str** | Description of the deployment. | [readonly] 
**tags** | **Dict[str, str]** | Descriptive tags for the deployment. | [optional] 
**instance_size** | **str** | Instance size of the deployment. | [readonly] 
**image_tag** | [**ImageTag**](ImageTag.md) | Image tag that is attached to the deployment. | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [readonly] 
**scale** | **int** | Number of pod replicas. | [readonly] 
**start_script** | **str** | Shell script that runs on start before the primary command. | [optional] [readonly] 
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [readonly] 
**working_dir** | **str** | Initial working directory. | [readonly] 
**start_ssh** | **bool** | Enable SSH access on the deployment. | [readonly] 
**is_spot** | **bool** | Enables running on spot instance sizes. | [readonly] 
**healthcheck** | **str** | Healthcheck path on the deployment&#39;s primary port. | [optional] [readonly] 
**subdomain** | **str** | Subdomain for the deployment URL. | [readonly] 
**start_dind** | **bool** | Enables docker-in-docker. | [readonly] 
**last_deploy** | **str** | Last started timestamp. | [readonly] 
**k8s_name** | **str** | Unique name for associated kubernetes objects. | [readonly] 
**created_at** | **str** | Creation timestamp | [readonly] 
**updated_at** | **str** | Update timestamp. | [readonly] 
**require_restart** | **bool** | True if an update was applied that requires restart to take effect. | [readonly] 
**resource_type** | **str** | Resource type of the deployment. | [readonly] 
**size_display** | **str** | Description of the instance size. | [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) | Dask cluster attached to the deployment. | [optional] [readonly] 
**status** | **str** | Current status of the deployment. | [readonly] 
**running_count** | **int** | Number of running pods. | [readonly] 
**debug_mode** | **bool** | True if deployment is running in debug mode. | [readonly] 
**url** | **str** | External URL for the deployment. | [readonly] 
**ssh_url** | **str** | External SSH URL for the deployment. | [optional] [readonly] 

## Example

```python
from saturn_api.models.deployment import Deployment

# TODO update the JSON string below
json = "{}"
# create an instance of Deployment from a JSON string
deployment_instance = Deployment.from_json(json)
# print the JSON string representation of the object
print(Deployment.to_json())

# convert the object into a dict
deployment_dict = deployment_instance.to_dict()
# create an instance of Deployment from a dict
deployment_from_dict = Deployment.from_dict(deployment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



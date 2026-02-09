# Deployment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**command** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**tags** | **Dict[str, str]** |  | [optional] 
**instance_size** | **str** |  | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [readonly] 
**scale** | **int** |  | [readonly] 
**start_script** | **str** |  | [optional] [readonly] 
**environment_variables** | **Dict[str, str]** |  | [readonly] 
**working_dir** | **str** |  | [readonly] 
**start_ssh** | **bool** |  | [readonly] 
**is_spot** | **bool** |  | [readonly] 
**healthcheck** | **str** |  | [optional] [readonly] 
**subdomain** | **str** |  | [readonly] 
**start_dind** | **bool** |  | [readonly] 
**image_tag** | [**ImageTag**](ImageTag.md) |  | [readonly] 
**last_deploy** | **str** |  | [readonly] 
**k8s_name** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**updated_at** | **str** |  | [readonly] 
**require_restart** | **bool** |  | [readonly] 
**resource_type** | **str** |  | [readonly] 
**size_display** | **str** |  | [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) |  | [optional] [readonly] 
**status** | **str** |  | [readonly] 
**running_count** | **int** |  | [readonly] 
**debug_mode** | **bool** |  | [readonly] 
**url** | **str** |  | [readonly] 
**ssh_url** | **str** |  | [optional] [readonly] 

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



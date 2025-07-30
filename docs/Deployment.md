# Deployment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner_id** | **str** |  | [optional] 
**owner_name** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**org_id** | **str** |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] [readonly] 
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**command** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
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
**image_tag** | [**ResourceImageTag**](ResourceImageTag.md) |  | [readonly] 
**last_deploy** | **str** |  | [readonly] 
**url** | **str** |  | [readonly] 
**status** | **str** |  | [readonly] 
**running_count** | **str** |  | [readonly] 
**k8s_name** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**updated_at** | **str** |  | [readonly] 
**require_restart** | **bool** |  | [readonly] 
**resource_type** | **str** |  | [readonly] 
**size_display** | **str** |  | [readonly] 
**debug_mode** | **bool** |  | [readonly] 

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



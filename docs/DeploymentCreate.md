# DeploymentCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner_id** | **str** |  | [optional] 
**owner_name** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**org_id** | **str** |  | [optional] 
**name** | **str** |  | 
**command** | **str** |  | 
**description** | **str** |  | [optional] 
**instance_size** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**image_tag_id** | **str** |  | [optional] 
**image_enforce_trusted** | **bool** |  | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [optional] 
**scale** | **int** |  | [optional] 
**start_script** | **str** |  | [optional] 
**environment_variables** | **Dict[str, str]** |  | [optional] 
**working_dir** | **str** |  | [optional] 
**start_ssh** | **bool** |  | [optional] 
**is_spot** | **bool** |  | [optional] 
**healthcheck** | **str** |  | [optional] 
**subdomain** | **str** |  | [optional] 
**start_dind** | **bool** |  | [optional] 

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



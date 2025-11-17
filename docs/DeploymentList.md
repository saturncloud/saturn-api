# DeploymentList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deployments** | [**List[Deployment]**](Deployment.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.deployment_list import DeploymentList

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentList from a JSON string
deployment_list_instance = DeploymentList.from_json(json)
# print the JSON string representation of the object
print(DeploymentList.to_json())

# convert the object into a dict
deployment_list_dict = deployment_list_instance.to_dict()
# create an instance of DeploymentList from a dict
deployment_list_from_dict = DeploymentList.from_dict(deployment_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



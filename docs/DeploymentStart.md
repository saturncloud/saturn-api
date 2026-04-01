# DeploymentStart


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debug_mode** | **bool** | Enable debug mode. Deployment will continue to run on error, and SSH will be enabled. | [optional] 

## Example

```python
from saturn_api.models.deployment_start import DeploymentStart

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentStart from a JSON string
deployment_start_instance = DeploymentStart.from_json(json)
# print the JSON string representation of the object
print(DeploymentStart.to_json())

# convert the object into a dict
deployment_start_dict = deployment_start_instance.to_dict()
# create an instance of DeploymentStart from a dict
deployment_start_from_dict = DeploymentStart.from_dict(deployment_start_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



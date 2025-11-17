# DeploymentServerOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**ServerOptionsSize**](ServerOptionsSize.md) |  | 
**default_images** | [**DefaultImages**](DefaultImages.md) |  | 
**default_sizes** | [**DefaultSizes**](DefaultSizes.md) |  | 

## Example

```python
from saturn_api.models.deployment_server_options import DeploymentServerOptions

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentServerOptions from a JSON string
deployment_server_options_instance = DeploymentServerOptions.from_json(json)
# print the JSON string representation of the object
print(DeploymentServerOptions.to_json())

# convert the object into a dict
deployment_server_options_dict = deployment_server_options_instance.to_dict()
# create an instance of DeploymentServerOptions from a dict
deployment_server_options_from_dict = DeploymentServerOptions.from_dict(deployment_server_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



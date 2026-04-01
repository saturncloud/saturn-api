# DeploymentServerInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**ServerOptionsSize**](ServerOptionsSize.md) | Configuration options for deployments. | 
**default_images** | [**DefaultImages**](DefaultImages.md) | Default images for deployments. | 
**default_sizes** | [**DefaultSizes**](DefaultSizes.md) | Default instance sizes for deployments. | 

## Example

```python
from saturn_api.models.deployment_server_info import DeploymentServerInfo

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentServerInfo from a JSON string
deployment_server_info_instance = DeploymentServerInfo.from_json(json)
# print the JSON string representation of the object
print(DeploymentServerInfo.to_json())

# convert the object into a dict
deployment_server_info_dict = deployment_server_info_instance.to_dict()
# create an instance of DeploymentServerInfo from a dict
deployment_server_info_from_dict = DeploymentServerInfo.from_dict(deployment_server_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



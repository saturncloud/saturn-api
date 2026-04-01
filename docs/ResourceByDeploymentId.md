# ResourceByDeploymentId


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deployment_id** | **str** | Reference by deployment ID. | 

## Example

```python
from saturn_api.models.resource_by_deployment_id import ResourceByDeploymentId

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceByDeploymentId from a JSON string
resource_by_deployment_id_instance = ResourceByDeploymentId.from_json(json)
# print the JSON string representation of the object
print(ResourceByDeploymentId.to_json())

# convert the object into a dict
resource_by_deployment_id_dict = resource_by_deployment_id_instance.to_dict()
# create an instance of ResourceByDeploymentId from a dict
resource_by_deployment_id_from_dict = ResourceByDeploymentId.from_dict(resource_by_deployment_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



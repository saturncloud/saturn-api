# ResourceState


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**action** | **str** |  | [optional] [readonly] 
**status** | **str** |  | [readonly] 
**url** | **str** | External URL for the primary route, if applicable. | [optional] [readonly] 
**ssh_url** | **str** | External SSH URL for the resource when SSH is enabled. | [optional] [readonly] 
**ssh_user** | **str** | SSH username for the resource when SSH is enabled. | [optional] [readonly] 
**routes** | [**List[RouteState]**](RouteState.md) | External URL for each route exposed by the resource. | [optional] [readonly] 

## Example

```python
from saturn_api.models.resource_state import ResourceState

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceState from a JSON string
resource_state_instance = ResourceState.from_json(json)
# print the JSON string representation of the object
print(ResourceState.to_json())

# convert the object into a dict
resource_state_dict = resource_state_instance.to_dict()
# create an instance of ResourceState from a dict
resource_state_from_dict = ResourceState.from_dict(resource_state_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



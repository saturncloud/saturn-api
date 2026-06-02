# RouteState


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **str** |  | [readonly] 
**container_port** | **int** |  | [readonly] 
**url** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.route_state import RouteState

# TODO update the JSON string below
json = "{}"
# create an instance of RouteState from a JSON string
route_state_instance = RouteState.from_json(json)
# print the JSON string representation of the object
print(RouteState.to_json())

# convert the object into a dict
route_state_dict = route_state_instance.to_dict()
# create an instance of RouteState from a dict
route_state_from_dict = RouteState.from_dict(route_state_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



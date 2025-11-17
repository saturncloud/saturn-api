# RouteByContainerPort


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**container_port** | **int** |  | 

## Example

```python
from saturn_api.models.route_by_container_port import RouteByContainerPort

# TODO update the JSON string below
json = "{}"
# create an instance of RouteByContainerPort from a JSON string
route_by_container_port_instance = RouteByContainerPort.from_json(json)
# print the JSON string representation of the object
print(RouteByContainerPort.to_json())

# convert the object into a dict
route_by_container_port_dict = route_by_container_port_instance.to_dict()
# create an instance of RouteByContainerPort from a dict
route_by_container_port_from_dict = RouteByContainerPort.from_dict(route_by_container_port_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



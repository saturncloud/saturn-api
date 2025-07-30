# RouteUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **str** |  | [optional] 
**container_port** | **int** |  | [optional] 
**visibility** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.route_update import RouteUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of RouteUpdate from a JSON string
route_update_instance = RouteUpdate.from_json(json)
# print the JSON string representation of the object
print(RouteUpdate.to_json())

# convert the object into a dict
route_update_dict = route_update_instance.to_dict()
# create an instance of RouteUpdate from a dict
route_update_from_dict = RouteUpdate.from_dict(route_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



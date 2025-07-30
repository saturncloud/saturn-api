# RouteCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **str** |  | 
**container_port** | **int** |  | 
**visibility** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.route_create import RouteCreate

# TODO update the JSON string below
json = "{}"
# create an instance of RouteCreate from a JSON string
route_create_instance = RouteCreate.from_json(json)
# print the JSON string representation of the object
print(RouteCreate.to_json())

# convert the object into a dict
route_create_dict = route_create_instance.to_dict()
# create an instance of RouteCreate from a dict
route_create_from_dict = RouteCreate.from_dict(route_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



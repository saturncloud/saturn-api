# RoutesList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routes** | [**List[Route]**](Route.md) |  | [optional] 

## Example

```python
from saturn_api.models.routes_list import RoutesList

# TODO update the JSON string below
json = "{}"
# create an instance of RoutesList from a JSON string
routes_list_instance = RoutesList.from_json(json)
# print the JSON string representation of the object
print(RoutesList.to_json())

# convert the object into a dict
routes_list_dict = routes_list_instance.to_dict()
# create an instance of RoutesList from a dict
routes_list_from_dict = RoutesList.from_dict(routes_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



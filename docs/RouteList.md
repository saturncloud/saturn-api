# RouteList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**routes** | [**List[Route]**](Route.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.route_list import RouteList

# TODO update the JSON string below
json = "{}"
# create an instance of RouteList from a JSON string
route_list_instance = RouteList.from_json(json)
# print the JSON string representation of the object
print(RouteList.to_json())

# convert the object into a dict
route_list_dict = route_list_instance.to_dict()
# create an instance of RouteList from a dict
route_list_from_dict = RouteList.from_dict(route_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



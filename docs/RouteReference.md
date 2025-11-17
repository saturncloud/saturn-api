# RouteReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**subdomain** | **str** |  | 
**container_port** | **int** |  | 

## Example

```python
from saturn_api.models.route_reference import RouteReference

# TODO update the JSON string below
json = "{}"
# create an instance of RouteReference from a JSON string
route_reference_instance = RouteReference.from_json(json)
# print the JSON string representation of the object
print(RouteReference.to_json())

# convert the object into a dict
route_reference_dict = route_reference_instance.to_dict()
# create an instance of RouteReference from a dict
route_reference_from_dict = RouteReference.from_dict(route_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



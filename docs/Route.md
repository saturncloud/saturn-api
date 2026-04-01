# Route


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**subdomain** | **str** | Subdomain of the route. | [readonly] 
**container_port** | **int** | Exposed port in the container. | [readonly] 
**visibility** | **str** | Describes who is allowed to access the route. | [readonly] 
**url** | **str** | Full URL of the route. | [readonly] 
**required** | **bool** | True if the route is required for the resource. | [readonly] 
**daskcluster_id** | **str** | Dask cluster ID the route is attached to. | [optional] [readonly] 
**deployment_id** | **str** | Deployment ID the route is attached to. | [optional] [readonly] 
**workspace_id** | **str** | Workspace ID the route is attached to. | [optional] [readonly] 

## Example

```python
from saturn_api.models.route import Route

# TODO update the JSON string below
json = "{}"
# create an instance of Route from a JSON string
route_instance = Route.from_json(json)
# print the JSON string representation of the object
print(Route.to_json())

# convert the object into a dict
route_dict = route_instance.to_dict()
# create an instance of Route from a dict
route_from_dict = Route.from_dict(route_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



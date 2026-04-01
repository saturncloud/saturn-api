# ResourceByWorkspaceId


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workspace_id** | **str** | Reference by workspace ID. | 

## Example

```python
from saturn_api.models.resource_by_workspace_id import ResourceByWorkspaceId

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceByWorkspaceId from a JSON string
resource_by_workspace_id_instance = ResourceByWorkspaceId.from_json(json)
# print the JSON string representation of the object
print(ResourceByWorkspaceId.to_json())

# convert the object into a dict
resource_by_workspace_id_dict = resource_by_workspace_id_instance.to_dict()
# create an instance of ResourceByWorkspaceId from a dict
resource_by_workspace_id_from_dict = ResourceByWorkspaceId.from_dict(resource_by_workspace_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# WorkspaceServerSizeSchemas


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_shutoff** | **List[str]** |  | [readonly] 
**disk_space** | **List[str]** |  | [readonly] 
**size** | [**List[InstanceSize]**](InstanceSize.md) |  | [readonly] 

## Example

```python
from saturn_api.models.workspace_server_size_schemas import WorkspaceServerSizeSchemas

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceServerSizeSchemas from a JSON string
workspace_server_size_schemas_instance = WorkspaceServerSizeSchemas.from_json(json)
# print the JSON string representation of the object
print(WorkspaceServerSizeSchemas.to_json())

# convert the object into a dict
workspace_server_size_schemas_dict = workspace_server_size_schemas_instance.to_dict()
# create an instance of WorkspaceServerSizeSchemas from a dict
workspace_server_size_schemas_from_dict = WorkspaceServerSizeSchemas.from_dict(workspace_server_size_schemas_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



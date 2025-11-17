# WorkspaceServerOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**WorkspaceServerSizeSchemas**](WorkspaceServerSizeSchemas.md) |  | [readonly] 
**default_images** | [**WorkspaceIdeDefaultImages**](WorkspaceIdeDefaultImages.md) |  | [readonly] 
**default_sizes** | [**DefaultSizes**](DefaultSizes.md) |  | [readonly] 

## Example

```python
from saturn_api.models.workspace_server_options import WorkspaceServerOptions

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceServerOptions from a JSON string
workspace_server_options_instance = WorkspaceServerOptions.from_json(json)
# print the JSON string representation of the object
print(WorkspaceServerOptions.to_json())

# convert the object into a dict
workspace_server_options_dict = workspace_server_options_instance.to_dict()
# create an instance of WorkspaceServerOptions from a dict
workspace_server_options_from_dict = WorkspaceServerOptions.from_dict(workspace_server_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# WorkspaceServerInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**WorkspaceServerOptions**](WorkspaceServerOptions.md) | Configuration options for workspaces. | [readonly] 
**default_images** | [**WorkspaceIdeDefaultImages**](WorkspaceIdeDefaultImages.md) | Default images for workspaces. | [readonly] 
**default_sizes** | [**DefaultSizes**](DefaultSizes.md) | Default instance sizes for workspaces. | [readonly] 

## Example

```python
from saturn_api.models.workspace_server_info import WorkspaceServerInfo

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceServerInfo from a JSON string
workspace_server_info_instance = WorkspaceServerInfo.from_json(json)
# print the JSON string representation of the object
print(WorkspaceServerInfo.to_json())

# convert the object into a dict
workspace_server_info_dict = workspace_server_info_instance.to_dict()
# create an instance of WorkspaceServerInfo from a dict
workspace_server_info_from_dict = WorkspaceServerInfo.from_dict(workspace_server_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



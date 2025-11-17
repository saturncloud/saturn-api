# WorkspaceIdeDefaultImages


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jupyter** | [**DefaultImages**](DefaultImages.md) |  | [readonly] 
**rstudio** | [**DefaultImages**](DefaultImages.md) |  | [readonly] 

## Example

```python
from saturn_api.models.workspace_ide_default_images import WorkspaceIdeDefaultImages

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceIdeDefaultImages from a JSON string
workspace_ide_default_images_instance = WorkspaceIdeDefaultImages.from_json(json)
# print the JSON string representation of the object
print(WorkspaceIdeDefaultImages.to_json())

# convert the object into a dict
workspace_ide_default_images_dict = workspace_ide_default_images_instance.to_dict()
# create an instance of WorkspaceIdeDefaultImages from a dict
workspace_ide_default_images_from_dict = WorkspaceIdeDefaultImages.from_dict(workspace_ide_default_images_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



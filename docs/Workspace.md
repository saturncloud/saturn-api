# Workspace


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**image_tag** | [**ResourceImageTag**](ResourceImageTag.md) |  | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [readonly] 
**ide** | **str** |  | [readonly] 
**start_script** | **str** |  | [readonly] 
**environment_variables** | **Dict[str, str]** |  | [readonly] 
**working_dir** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**tags** | **Dict[str, str]** |  | [optional] 
**disk_space** | **str** |  | [readonly] 
**instance_size** | **str** |  | [readonly] 
**auto_shutoff** | **str** |  | [readonly] 
**start_ssh** | **bool** |  | [readonly] 
**is_spot** | **bool** |  | [readonly] 
**subdomain** | **str** |  | [readonly] 
**start_dind** | **bool** |  | [readonly] 
**resource_type** | **str** |  | [readonly] 
**size_display** | **str** |  | [readonly] 
**k8s_name** | **str** |  | [readonly] 
**require_restart** | **bool** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**updated_at** | **str** |  | [readonly] 
**started_at** | **str** |  | [readonly] 
**self_destruct** | **bool** |  | [optional] [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) |  | [optional] [readonly] 
**status** | **str** |  | [readonly] 
**debug_mode** | **bool** |  | [readonly] 
**url** | **str** |  | [readonly] 
**ssh_url** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.workspace import Workspace

# TODO update the JSON string below
json = "{}"
# create an instance of Workspace from a JSON string
workspace_instance = Workspace.from_json(json)
# print the JSON string representation of the object
print(Workspace.to_json())

# convert the object into a dict
workspace_dict = workspace_instance.to_dict()
# create an instance of Workspace from a dict
workspace_from_dict = Workspace.from_dict(workspace_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# WorkspaceRuntimeSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [readonly] 
**namespace** | **str** |  | [readonly] 
**uid** | **str** |  | [readonly] 
**controller_uid** | **str** |  | [readonly] 
**controller_kind** | **str** |  | [readonly] 
**labels** | **Dict[str, str]** |  | [readonly] 
**annotations** | **Dict[str, str]** |  | [readonly] 
**conditions** | [**List[Condition]**](Condition.md) |  | [readonly] 
**started_at** | **datetime** |  | [readonly] 
**deleted_at** | **datetime** |  | [readonly] 
**status** | [**DeploymentStatus**](DeploymentStatus.md) |  | 
**scale** | **int** |  | [readonly] 
**running_count** | **int** |  | [readonly] 
**active_count** | **int** |  | [readonly] 
**pod_summaries** | [**List[PodRuntimeSummary]**](PodRuntimeSummary.md) |  | [readonly] 
**disk_space** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.workspace_runtime_summary import WorkspaceRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspaceRuntimeSummary from a JSON string
workspace_runtime_summary_instance = WorkspaceRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(WorkspaceRuntimeSummary.to_json())

# convert the object into a dict
workspace_runtime_summary_dict = workspace_runtime_summary_instance.to_dict()
# create an instance of WorkspaceRuntimeSummary from a dict
workspace_runtime_summary_from_dict = WorkspaceRuntimeSummary.from_dict(workspace_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



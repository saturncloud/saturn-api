# PodRuntimeSummary


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
**status** | [**PodStatus**](PodStatus.md) |  | 
**init_container_summaries** | [**List[ContainerRuntimeSummary]**](ContainerRuntimeSummary.md) |  | [readonly] 
**container_summaries** | [**List[ContainerRuntimeSummary]**](ContainerRuntimeSummary.md) |  | [readonly] 
**node_name** | **str** |  | [readonly] 
**completed_at** | **datetime** |  | [readonly] 
**reason** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.pod_runtime_summary import PodRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of PodRuntimeSummary from a JSON string
pod_runtime_summary_instance = PodRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(PodRuntimeSummary.to_json())

# convert the object into a dict
pod_runtime_summary_dict = pod_runtime_summary_instance.to_dict()
# create an instance of PodRuntimeSummary from a dict
pod_runtime_summary_from_dict = PodRuntimeSummary.from_dict(pod_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



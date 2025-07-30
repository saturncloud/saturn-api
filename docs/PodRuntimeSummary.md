# PodRuntimeSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**namespace** | **str** |  | 
**uid** | **str** |  | 
**controller_uid** | **str** |  | [optional] 
**controller_kind** | **str** |  | [optional] 
**labels** | **Dict[str, str]** |  | [optional] 
**annotations** | **Dict[str, str]** |  | [optional] 
**conditions** | [**List[Condition]**](Condition.md) |  | [optional] 
**started_at** | **datetime** |  | [optional] 
**deleted_at** | **datetime** |  | [optional] 
**status** | **str** |  | [optional] [default to 'stopped']
**init_container_summaries** | [**List[ContainerRuntimeSummary]**](ContainerRuntimeSummary.md) |  | [optional] 
**container_summaries** | [**List[ContainerRuntimeSummary]**](ContainerRuntimeSummary.md) |  | [optional] 
**node_name** | **str** |  | [optional] 
**completed_at** | **datetime** |  | [optional] 
**phase** | **str** |  | [optional] [default to 'Unknown']
**reason** | **str** |  | [optional] 

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



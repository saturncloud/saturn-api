# ContainerRuntimeSummary


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
**status** | [**ContainerStatus**](ContainerStatus.md) |  | 
**finished_at** | **datetime** |  | [readonly] 
**restart_policy** | [**RestartPolicy**](RestartPolicy.md) |  | 
**image_pulled** | **bool** |  | [readonly] 
**exit_code** | **int** |  | [readonly] 
**logs** | **str** |  | [readonly] 
**reason** | **str** |  | [readonly] 
**previous** | [**ContainerRuntimeSummary**](ContainerRuntimeSummary.md) |  | [readonly] 

## Example

```python
from saturn_api.models.container_runtime_summary import ContainerRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of ContainerRuntimeSummary from a JSON string
container_runtime_summary_instance = ContainerRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(ContainerRuntimeSummary.to_json())

# convert the object into a dict
container_runtime_summary_dict = container_runtime_summary_instance.to_dict()
# create an instance of ContainerRuntimeSummary from a dict
container_runtime_summary_from_dict = ContainerRuntimeSummary.from_dict(container_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



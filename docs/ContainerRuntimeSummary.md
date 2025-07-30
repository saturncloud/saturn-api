# ContainerRuntimeSummary


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
**status** | **str** |  | [optional] [default to 'waiting']
**finished_at** | **datetime** |  | [optional] 
**restart_policy** | **str** |  | [optional] [default to 'Always']
**image_pulled** | **bool** |  | [optional] [default to False]
**exit_code** | **int** |  | [optional] 
**logs** | **str** |  | [optional] 
**reason** | **str** |  | [optional] 
**ready** | **bool** |  | [optional] [default to False]
**is_previous** | **bool** |  | [optional] [default to False]
**previous** | [**ContainerRuntimeSummary**](ContainerRuntimeSummary.md) |  | [optional] 

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



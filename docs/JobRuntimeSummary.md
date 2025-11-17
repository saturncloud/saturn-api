# JobRuntimeSummary


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
**scale** | **int** |  | [optional] [default to 1]
**completions** | **int** |  | [optional] [default to 1]
**running_count** | **int** |  | [optional] [default to 0]
**active_count** | **int** |  | [optional] [default to 0]
**completed_at** | **datetime** |  | [optional] 
**pod_summaries** | [**List[PodRuntimeSummary]**](PodRuntimeSummary.md) |  | [optional] 

## Example

```python
from saturn_api.models.job_runtime_summary import JobRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of JobRuntimeSummary from a JSON string
job_runtime_summary_instance = JobRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(JobRuntimeSummary.to_json())

# convert the object into a dict
job_runtime_summary_dict = job_runtime_summary_instance.to_dict()
# create an instance of JobRuntimeSummary from a dict
job_runtime_summary_from_dict = JobRuntimeSummary.from_dict(job_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



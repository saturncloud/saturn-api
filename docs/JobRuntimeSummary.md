# JobRuntimeSummary


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
**status** | [**JobStatus**](JobStatus.md) |  | 
**scale** | **int** |  | [readonly] 
**running_count** | **int** |  | [readonly] 
**active_count** | **int** |  | [readonly] 
**completed_at** | **datetime** |  | [readonly] 

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



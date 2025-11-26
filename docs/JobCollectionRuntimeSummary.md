# JobCollectionRuntimeSummary


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
**scheduled** | **bool** |  | [readonly] 
**job_summaries** | [**List[JobRuntimeSummary]**](JobRuntimeSummary.md) |  | [readonly] 

## Example

```python
from saturn_api.models.job_collection_runtime_summary import JobCollectionRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of JobCollectionRuntimeSummary from a JSON string
job_collection_runtime_summary_instance = JobCollectionRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(JobCollectionRuntimeSummary.to_json())

# convert the object into a dict
job_collection_runtime_summary_dict = job_collection_runtime_summary_instance.to_dict()
# create an instance of JobCollectionRuntimeSummary from a dict
job_collection_runtime_summary_from_dict = JobCollectionRuntimeSummary.from_dict(job_collection_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# JobCollectionRuntimeSummary


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
**scale** | **int** |  | [optional] [default to 0]
**scheduled** | **bool** |  | [optional] [default to False]
**job_summaries** | [**List[JobRuntimeSummary]**](JobRuntimeSummary.md) |  | [optional] 

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



# JobRuntimeSummaryList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**job_summaries** | [**List[JobRuntimeSummary]**](JobRuntimeSummary.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.job_runtime_summary_list import JobRuntimeSummaryList

# TODO update the JSON string below
json = "{}"
# create an instance of JobRuntimeSummaryList from a JSON string
job_runtime_summary_list_instance = JobRuntimeSummaryList.from_json(json)
# print the JSON string representation of the object
print(JobRuntimeSummaryList.to_json())

# convert the object into a dict
job_runtime_summary_list_dict = job_runtime_summary_list_instance.to_dict()
# create an instance of JobRuntimeSummaryList from a dict
job_runtime_summary_list_from_dict = JobRuntimeSummaryList.from_dict(job_runtime_summary_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



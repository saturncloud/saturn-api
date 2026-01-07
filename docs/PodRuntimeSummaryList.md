# PodRuntimeSummaryList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pod_summaries** | [**List[PodRuntimeSummary]**](PodRuntimeSummary.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.pod_runtime_summary_list import PodRuntimeSummaryList

# TODO update the JSON string below
json = "{}"
# create an instance of PodRuntimeSummaryList from a JSON string
pod_runtime_summary_list_instance = PodRuntimeSummaryList.from_json(json)
# print the JSON string representation of the object
print(PodRuntimeSummaryList.to_json())

# convert the object into a dict
pod_runtime_summary_list_dict = pod_runtime_summary_list_instance.to_dict()
# create an instance of PodRuntimeSummaryList from a dict
pod_runtime_summary_list_from_dict = PodRuntimeSummaryList.from_dict(pod_runtime_summary_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



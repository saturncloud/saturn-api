# DaskWorkerRuntimeSummaryList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workers** | [**List[PodRuntimeSummary]**](PodRuntimeSummary.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.dask_worker_runtime_summary_list import DaskWorkerRuntimeSummaryList

# TODO update the JSON string below
json = "{}"
# create an instance of DaskWorkerRuntimeSummaryList from a JSON string
dask_worker_runtime_summary_list_instance = DaskWorkerRuntimeSummaryList.from_json(json)
# print the JSON string representation of the object
print(DaskWorkerRuntimeSummaryList.to_json())

# convert the object into a dict
dask_worker_runtime_summary_list_dict = dask_worker_runtime_summary_list_instance.to_dict()
# create an instance of DaskWorkerRuntimeSummaryList from a dict
dask_worker_runtime_summary_list_from_dict = DaskWorkerRuntimeSummaryList.from_dict(dask_worker_runtime_summary_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



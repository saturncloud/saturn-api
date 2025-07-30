# DaskWorkersRuntimeSummaryPage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workers** | [**List[PodRuntimeSummary]**](PodRuntimeSummary.md) |  | 
**pagination** | [**PaginationOffsetMeta**](PaginationOffsetMeta.md) |  | 

## Example

```python
from saturn_api.models.dask_workers_runtime_summary_page import DaskWorkersRuntimeSummaryPage

# TODO update the JSON string below
json = "{}"
# create an instance of DaskWorkersRuntimeSummaryPage from a JSON string
dask_workers_runtime_summary_page_instance = DaskWorkersRuntimeSummaryPage.from_json(json)
# print the JSON string representation of the object
print(DaskWorkersRuntimeSummaryPage.to_json())

# convert the object into a dict
dask_workers_runtime_summary_page_dict = dask_workers_runtime_summary_page_instance.to_dict()
# create an instance of DaskWorkersRuntimeSummaryPage from a dict
dask_workers_runtime_summary_page_from_dict = DaskWorkersRuntimeSummaryPage.from_dict(dask_workers_runtime_summary_page_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



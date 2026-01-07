# DaskWorkerSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** |  | [readonly] 
**pending_count** | **int** |  | [readonly] 
**running_count** | **int** |  | [readonly] 
**error_count** | **int** |  | [readonly] 

## Example

```python
from saturn_api.models.dask_worker_summary import DaskWorkerSummary

# TODO update the JSON string below
json = "{}"
# create an instance of DaskWorkerSummary from a JSON string
dask_worker_summary_instance = DaskWorkerSummary.from_json(json)
# print the JSON string representation of the object
print(DaskWorkerSummary.to_json())

# convert the object into a dict
dask_worker_summary_dict = dask_worker_summary_instance.to_dict()
# create an instance of DaskWorkerSummary from a dict
dask_worker_summary_from_dict = DaskWorkerSummary.from_dict(dask_worker_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# DaskClusterRuntimeSummary


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
**status** | [**PodStatus**](PodStatus.md) |  | 
**kubecluster_summary** | [**DeploymentRuntimeSummary**](DeploymentRuntimeSummary.md) |  | [readonly] 
**scheduler_summary** | [**PodRuntimeSummary**](PodRuntimeSummary.md) |  | [readonly] 
**worker_summary** | [**DaskWorkerSummary**](DaskWorkerSummary.md) |  | [readonly] 
**errors** | **List[str]** |  | [readonly] 

## Example

```python
from saturn_api.models.dask_cluster_runtime_summary import DaskClusterRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterRuntimeSummary from a JSON string
dask_cluster_runtime_summary_instance = DaskClusterRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(DaskClusterRuntimeSummary.to_json())

# convert the object into a dict
dask_cluster_runtime_summary_dict = dask_cluster_runtime_summary_instance.to_dict()
# create an instance of DaskClusterRuntimeSummary from a dict
dask_cluster_runtime_summary_from_dict = DaskClusterRuntimeSummary.from_dict(dask_cluster_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



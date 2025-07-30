# DaskCluster


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**resource_type** | **str** |  | [readonly] 
**workspace** | [**Workspace**](Workspace.md) |  | [optional] [readonly] 
**deployment** | [**Deployment**](Deployment.md) |  | [optional] [readonly] 
**worker_size** | **str** |  | [readonly] 
**worker_size_display** | **str** |  | [readonly] 
**worker_is_spot** | **bool** |  | [readonly] 
**scheduler_size** | **str** |  | [readonly] 
**scheduler_size_display** | **str** |  | [readonly] 
**n_workers** | **int** |  | [readonly] 
**nprocs** | **int** |  | [readonly] 
**nthreads** | **int** |  | [readonly] 
**deployment_id** | **str** |  | [optional] [readonly] 
**workspace_id** | **str** |  | [optional] [readonly] 
**scheduler_url** | **str** |  | [readonly] 
**subdomain** | **str** |  | [readonly] 
**url** | **str** |  | [readonly] 
**image** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.dask_cluster import DaskCluster

# TODO update the JSON string below
json = "{}"
# create an instance of DaskCluster from a JSON string
dask_cluster_instance = DaskCluster.from_json(json)
# print the JSON string representation of the object
print(DaskCluster.to_json())

# convert the object into a dict
dask_cluster_dict = dask_cluster_instance.to_dict()
# create an instance of DaskCluster from a dict
dask_cluster_from_dict = DaskCluster.from_dict(dask_cluster_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



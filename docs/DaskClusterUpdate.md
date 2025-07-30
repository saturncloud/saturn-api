# DaskClusterUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**worker_size** | **str** |  | [optional] 
**worker_is_spot** | **bool** |  | [optional] 
**scheduler_size** | **str** |  | [optional] 
**n_workers** | **int** |  | [optional] 
**nprocs** | **int** |  | [optional] 
**nthreads** | **int** |  | [optional] 
**subdomain** | **str** |  | [optional] 
**deployment_id** | **str** |  | [optional] 
**workspace_id** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.dask_cluster_update import DaskClusterUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterUpdate from a JSON string
dask_cluster_update_instance = DaskClusterUpdate.from_json(json)
# print the JSON string representation of the object
print(DaskClusterUpdate.to_json())

# convert the object into a dict
dask_cluster_update_dict = dask_cluster_update_instance.to_dict()
# create an instance of DaskClusterUpdate from a dict
dask_cluster_update_from_dict = DaskClusterUpdate.from_dict(dask_cluster_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



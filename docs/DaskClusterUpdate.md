# DaskClusterUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tags** | **Dict[str, str]** | Descriptive tags for the dask cluster. | [optional] 
**worker_size** | **str** | Instance size of the dask workers. | [optional] 
**worker_is_spot** | **bool** | Enables spot instances for the dask workers. | [optional] 
**scheduler_size** | **str** | Instance size of the dask scheduler. | [optional] 
**n_workers** | **int** | Number of dask workers. | [optional] 
**nprocs** | **int** | Number of processes per worker. | [optional] 
**nthreads** | **int** | Number of threads per process. | [optional] 
**subdomain** | **str** | Subdomain for the dask dashboard. | [optional] 

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



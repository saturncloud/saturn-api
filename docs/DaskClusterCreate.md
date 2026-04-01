# DaskClusterCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | [**ResourceReference**](ResourceReference.md) | Reference to the resource to attach the dask cluster to. | 
**tags** | **Dict[str, str]** | Descriptive tags for the dask cluster. | [optional] 
**worker_size** | **str** | Instance size of the dask workers. | [optional] 
**worker_is_spot** | **bool** | Enables spot instances for the dask workers. | [optional] [default to False]
**scheduler_size** | **str** | Instance size of the dask scheduler. | [optional] 
**n_workers** | **int** | Number of dask workers. | [optional] [default to 1]
**nprocs** | **int** | Number of processes per worker. | [optional] 
**nthreads** | **int** | Number of threads per process. | [optional] [default to 2]
**subdomain** | **str** | Subdomain for the dask dashboard. | [optional] 

## Example

```python
from saturn_api.models.dask_cluster_create import DaskClusterCreate

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterCreate from a JSON string
dask_cluster_create_instance = DaskClusterCreate.from_json(json)
# print the JSON string representation of the object
print(DaskClusterCreate.to_json())

# convert the object into a dict
dask_cluster_create_dict = dask_cluster_create_instance.to_dict()
# create an instance of DaskClusterCreate from a dict
dask_cluster_create_from_dict = DaskClusterCreate.from_dict(dask_cluster_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



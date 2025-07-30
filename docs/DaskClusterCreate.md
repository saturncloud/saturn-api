# DaskClusterCreate


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



# DaskClusterCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | [**ResourceReference**](ResourceReference.md) |  | 
**tags** | **Dict[str, str]** |  | [optional] 
**worker_size** | **str** |  | [optional] 
**worker_is_spot** | **bool** |  | [optional] [default to False]
**scheduler_size** | **str** |  | [optional] 
**n_workers** | **int** |  | [optional] [default to 1]
**nthreads** | **int** |  | [optional] [default to 2]
**nprocs** | **int** |  | [optional] 
**subdomain** | **str** |  | [optional] 

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



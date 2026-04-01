# DaskClusterNested


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the dask cluster. | [readonly] 
**name** | **str** | Name of the resource the dask cluster is attached to. | [readonly] 
**resource_type** | **str** | Type of resource the dask cluster is attached to. | [readonly] 
**tags** | **Dict[str, str]** | Descriptive tags for the dask cluster. | [readonly] 
**worker_size** | **str** | Instance size of the dask workers. | [readonly] 
**worker_size_display** | **str** | Description of the instance size for the workers. | [readonly] 
**worker_is_spot** | **bool** | Enables spot instances for the dask workers. | [readonly] 
**scheduler_size** | **str** | Instance size of the dask scheduler. | [readonly] 
**scheduler_size_display** | **str** | Description of the instance size for the scheduler. | [readonly] 
**n_workers** | **int** | Number of dask workers. | [readonly] 
**nprocs** | **int** | Number of processes per worker. | [readonly] 
**nthreads** | **int** | Number of threads per process. | [readonly] 
**scheduler_url** | **str** | Internal address for the dask scheduler | [readonly] 
**subdomain** | **str** | Subdomain for the dask dashboard. | [readonly] 
**image** | **str** | Image for the dask cluster and resource it is attached to. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**status** | **str** | Current status of the dask cluster. | [readonly] 
**warnings** | **List[str]** | Messages with warnings about the state of the dask cluster. | [optional] 
**errors** | **List[str]** | Messages with errors about the state of the dask cluster. | [optional] 
**url** | **str** | External URL for the dask dashboard. | [readonly] 

## Example

```python
from saturn_api.models.dask_cluster_nested import DaskClusterNested

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterNested from a JSON string
dask_cluster_nested_instance = DaskClusterNested.from_json(json)
# print the JSON string representation of the object
print(DaskClusterNested.to_json())

# convert the object into a dict
dask_cluster_nested_dict = dask_cluster_nested_instance.to_dict()
# create an instance of DaskClusterNested from a dict
dask_cluster_nested_from_dict = DaskClusterNested.from_dict(dask_cluster_nested_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



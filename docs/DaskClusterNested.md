# DaskClusterNested


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**resource_type** | [**ResourceType**](ResourceType.md) |  | 
**tags** | **Dict[str, str]** |  | [readonly] 
**worker_size** | **str** |  | [readonly] 
**worker_size_display** | **str** |  | [readonly] 
**worker_is_spot** | **bool** |  | [readonly] 
**scheduler_size** | **str** |  | [readonly] 
**scheduler_size_display** | **str** |  | [readonly] 
**n_workers** | **int** |  | [readonly] 
**nprocs** | **int** |  | [readonly] 
**nthreads** | **int** |  | [readonly] 
**scheduler_url** | **str** |  | [readonly] 
**subdomain** | **str** |  | [readonly] 
**image** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**status** | **str** |  | [readonly] 
**warnings** | **List[str]** |  | [optional] 
**errors** | **List[str]** |  | [optional] 
**url** | **str** |  | [readonly] 

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



# DaskClusterList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dask_clusters** | [**List[DaskCluster]**](DaskCluster.md) | List of dask clusters. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.dask_cluster_list import DaskClusterList

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterList from a JSON string
dask_cluster_list_instance = DaskClusterList.from_json(json)
# print the JSON string representation of the object
print(DaskClusterList.to_json())

# convert the object into a dict
dask_cluster_list_dict = dask_cluster_list_instance.to_dict()
# create an instance of DaskClusterList from a dict
dask_cluster_list_from_dict = DaskClusterList.from_dict(dask_cluster_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



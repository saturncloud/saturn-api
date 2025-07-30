# DaskClustersList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dask_clusters** | [**List[DaskCluster]**](DaskCluster.md) |  | 

## Example

```python
from saturn_api.models.dask_clusters_list import DaskClustersList

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClustersList from a JSON string
dask_clusters_list_instance = DaskClustersList.from_json(json)
# print the JSON string representation of the object
print(DaskClustersList.to_json())

# convert the object into a dict
dask_clusters_list_dict = dask_clusters_list_instance.to_dict()
# create an instance of DaskClustersList from a dict
dask_clusters_list_from_dict = DaskClustersList.from_dict(dask_clusters_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



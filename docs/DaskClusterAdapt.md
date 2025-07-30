# DaskClusterAdapt


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**minimum** | **int** |  | 
**maximum** | **int** |  | 

## Example

```python
from saturn_api.models.dask_cluster_adapt import DaskClusterAdapt

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterAdapt from a JSON string
dask_cluster_adapt_instance = DaskClusterAdapt.from_json(json)
# print the JSON string representation of the object
print(DaskClusterAdapt.to_json())

# convert the object into a dict
dask_cluster_adapt_dict = dask_cluster_adapt_instance.to_dict()
# create an instance of DaskClusterAdapt from a dict
dask_cluster_adapt_from_dict = DaskClusterAdapt.from_dict(dask_cluster_adapt_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



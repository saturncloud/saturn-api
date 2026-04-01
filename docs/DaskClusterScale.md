# DaskClusterScale


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**n** | **int** | Number of dask workers to scale to. | 

## Example

```python
from saturn_api.models.dask_cluster_scale import DaskClusterScale

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterScale from a JSON string
dask_cluster_scale_instance = DaskClusterScale.from_json(json)
# print the JSON string representation of the object
print(DaskClusterScale.to_json())

# convert the object into a dict
dask_cluster_scale_dict = dask_cluster_scale_instance.to_dict()
# create an instance of DaskClusterScale from a dict
dask_cluster_scale_from_dict = DaskClusterScale.from_dict(dask_cluster_scale_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



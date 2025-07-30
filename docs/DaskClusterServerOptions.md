# DaskClusterServerOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**ServerOptionsSizes**](ServerOptionsSizes.md) |  | 

## Example

```python
from saturn_api.models.dask_cluster_server_options import DaskClusterServerOptions

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterServerOptions from a JSON string
dask_cluster_server_options_instance = DaskClusterServerOptions.from_json(json)
# print the JSON string representation of the object
print(DaskClusterServerOptions.to_json())

# convert the object into a dict
dask_cluster_server_options_dict = dask_cluster_server_options_instance.to_dict()
# create an instance of DaskClusterServerOptions from a dict
dask_cluster_server_options_from_dict = DaskClusterServerOptions.from_dict(dask_cluster_server_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



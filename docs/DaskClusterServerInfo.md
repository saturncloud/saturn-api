# DaskClusterServerInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**ServerOptionsSizes**](ServerOptionsSizes.md) |  | [optional] 

## Example

```python
from saturn_api.models.dask_cluster_server_info import DaskClusterServerInfo

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterServerInfo from a JSON string
dask_cluster_server_info_instance = DaskClusterServerInfo.from_json(json)
# print the JSON string representation of the object
print(DaskClusterServerInfo.to_json())

# convert the object into a dict
dask_cluster_server_info_dict = dask_cluster_server_info_instance.to_dict()
# create an instance of DaskClusterServerInfo from a dict
dask_cluster_server_info_from_dict = DaskClusterServerInfo.from_dict(dask_cluster_server_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



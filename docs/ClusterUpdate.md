# ClusterUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_type** | [**ClusterConnectionType**](ClusterConnectionType.md) |  | [optional] 
**server_url** | **str** | K8s API server URL. | [optional] 
**ca_bundle** | **str** | Base64-encoded CA bundle. | [optional] 
**token** | **str** | Bearer token. | [optional] 
**utilities** | **Dict[str, object]** | ClusterUtilities metadata. | [optional] 

## Example

```python
from saturn_api.models.cluster_update import ClusterUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ClusterUpdate from a JSON string
cluster_update_instance = ClusterUpdate.from_json(json)
# print the JSON string representation of the object
print(ClusterUpdate.to_json())

# convert the object into a dict
cluster_update_dict = cluster_update_instance.to_dict()
# create an instance of ClusterUpdate from a dict
cluster_update_from_dict = ClusterUpdate.from_dict(cluster_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



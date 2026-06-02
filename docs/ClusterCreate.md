# ClusterCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Unique name of the cluster. | 
**org_id** | **str** | ID of the org that owns the cluster. | 
**connection_type** | [**ClusterConnectionType**](ClusterConnectionType.md) |  | 
**server_url** | **str** | K8s API server URL. Required when connection_type is &#39;token&#39;. | [optional] 
**ca_bundle** | **str** | Base64-encoded CA bundle. Required when connection_type is &#39;token&#39;. | [optional] 
**token** | **str** | Bearer token for k8s API. Required when connection_type is &#39;token&#39;. | [optional] 
**utilities** | **Dict[str, object]** | ClusterUtilities metadata (service endpoints). | [optional] 

## Example

```python
from saturn_api.models.cluster_create import ClusterCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ClusterCreate from a JSON string
cluster_create_instance = ClusterCreate.from_json(json)
# print the JSON string representation of the object
print(ClusterCreate.to_json())

# convert the object into a dict
cluster_create_dict = cluster_create_instance.to_dict()
# create an instance of ClusterCreate from a dict
cluster_create_from_dict = ClusterCreate.from_dict(cluster_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



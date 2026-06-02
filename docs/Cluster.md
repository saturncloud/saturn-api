# Cluster


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Cluster ID. | [readonly] 
**name** | **str** | Cluster name. | [readonly] 
**org_id** | **str** | Owning org ID. | [readonly] 
**connection_type** | [**ClusterConnectionType**](ClusterConnectionType.md) |  | 
**server_url** | **str** | K8s API server URL. | [optional] [readonly] 
**utilities** | **Dict[str, object]** | ClusterUtilities metadata. | [optional] [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**updated_at** | **str** | Last update timestamp. | [readonly] 

## Example

```python
from saturn_api.models.cluster import Cluster

# TODO update the JSON string below
json = "{}"
# create an instance of Cluster from a JSON string
cluster_instance = Cluster.from_json(json)
# print the JSON string representation of the object
print(Cluster.to_json())

# convert the object into a dict
cluster_dict = cluster_instance.to_dict()
# create an instance of Cluster from a dict
cluster_from_dict = Cluster.from_dict(cluster_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



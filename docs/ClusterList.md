# ClusterList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clusters** | [**List[Cluster]**](Cluster.md) | List of clusters. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.cluster_list import ClusterList

# TODO update the JSON string below
json = "{}"
# create an instance of ClusterList from a JSON string
cluster_list_instance = ClusterList.from_json(json)
# print the JSON string representation of the object
print(ClusterList.to_json())

# convert the object into a dict
cluster_list_dict = cluster_list_instance.to_dict()
# create an instance of ClusterList from a dict
cluster_list_from_dict = ClusterList.from_dict(cluster_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



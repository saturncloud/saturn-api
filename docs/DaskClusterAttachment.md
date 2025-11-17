# DaskClusterAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**num_workers** | **int** |  | 
**scheduler** | [**DaskClusterAttachmentScheduler**](DaskClusterAttachmentScheduler.md) |  | 
**worker** | [**DaskClusterAttachmentWorker**](DaskClusterAttachmentWorker.md) |  | 
**status** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.dask_cluster_attachment import DaskClusterAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterAttachment from a JSON string
dask_cluster_attachment_instance = DaskClusterAttachment.from_json(json)
# print the JSON string representation of the object
print(DaskClusterAttachment.to_json())

# convert the object into a dict
dask_cluster_attachment_dict = dask_cluster_attachment_instance.to_dict()
# create an instance of DaskClusterAttachment from a dict
dask_cluster_attachment_from_dict = DaskClusterAttachment.from_dict(dask_cluster_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



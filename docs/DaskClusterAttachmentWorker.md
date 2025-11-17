# DaskClusterAttachmentWorker


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**instance_type** | **str** |  | 
**num_processes** | **int** |  | [optional] 
**num_threads** | **int** |  | [optional] 
**use_spot_instances** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.dask_cluster_attachment_worker import DaskClusterAttachmentWorker

# TODO update the JSON string below
json = "{}"
# create an instance of DaskClusterAttachmentWorker from a JSON string
dask_cluster_attachment_worker_instance = DaskClusterAttachmentWorker.from_json(json)
# print the JSON string representation of the object
print(DaskClusterAttachmentWorker.to_json())

# convert the object into a dict
dask_cluster_attachment_worker_dict = dask_cluster_attachment_worker_instance.to_dict()
# create an instance of DaskClusterAttachmentWorker from a dict
dask_cluster_attachment_worker_from_dict = DaskClusterAttachmentWorker.from_dict(dask_cluster_attachment_worker_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# PodHistory


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pod_name** | **str** | Name of the pod. | [readonly] 
**status** | **str** | Last known status of the pod. | [readonly] 
**last_seen** | **str** | Last seen timestamp of the pod. | [readonly] 
**start_time** | **str** | Start time of the pod. | [readonly] 
**label_job_name** | **str** | Job label, if applicable. | [optional] [readonly] 

## Example

```python
from saturn_api.models.pod_history import PodHistory

# TODO update the JSON string below
json = "{}"
# create an instance of PodHistory from a JSON string
pod_history_instance = PodHistory.from_json(json)
# print the JSON string representation of the object
print(PodHistory.to_json())

# convert the object into a dict
pod_history_dict = pod_history_instance.to_dict()
# create an instance of PodHistory from a dict
pod_history_from_dict = PodHistory.from_dict(pod_history_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



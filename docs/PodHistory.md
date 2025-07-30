# PodHistory


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pod_name** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**last_seen** | **str** |  | [optional] 
**start_time** | **str** |  | [optional] 
**end_time** | **str** |  | [optional] 
**label_job_name** | **str** |  | [optional] 

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



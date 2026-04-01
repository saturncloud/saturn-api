# PodLogs


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logs** | **str** | Log lines from the active pod. | [readonly] 

## Example

```python
from saturn_api.models.pod_logs import PodLogs

# TODO update the JSON string below
json = "{}"
# create an instance of PodLogs from a JSON string
pod_logs_instance = PodLogs.from_json(json)
# print the JSON string representation of the object
print(PodLogs.to_json())

# convert the object into a dict
pod_logs_dict = pod_logs_instance.to_dict()
# create an instance of PodLogs from a dict
pod_logs_from_dict = PodLogs.from_dict(pod_logs_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



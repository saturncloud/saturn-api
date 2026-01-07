# ActiveLogs


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logs** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.active_logs import ActiveLogs

# TODO update the JSON string below
json = "{}"
# create an instance of ActiveLogs from a JSON string
active_logs_instance = ActiveLogs.from_json(json)
# print the JSON string representation of the object
print(ActiveLogs.to_json())

# convert the object into a dict
active_logs_dict = active_logs_instance.to_dict()
# create an instance of ActiveLogs from a dict
active_logs_from_dict = ActiveLogs.from_dict(active_logs_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



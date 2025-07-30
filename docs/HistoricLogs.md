# HistoricLogs


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logs** | **str** |  | 
**next_first_key** | **str** |  | [optional] 
**next_last_key** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.historic_logs import HistoricLogs

# TODO update the JSON string below
json = "{}"
# create an instance of HistoricLogs from a JSON string
historic_logs_instance = HistoricLogs.from_json(json)
# print the JSON string representation of the object
print(HistoricLogs.to_json())

# convert the object into a dict
historic_logs_dict = historic_logs_instance.to_dict()
# create an instance of HistoricLogs from a dict
historic_logs_from_dict = HistoricLogs.from_dict(historic_logs_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



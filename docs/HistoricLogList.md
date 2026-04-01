# HistoricLogList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logs** | [**List[HistoricLog]**](HistoricLog.md) | List of logs. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.historic_log_list import HistoricLogList

# TODO update the JSON string below
json = "{}"
# create an instance of HistoricLogList from a JSON string
historic_log_list_instance = HistoricLogList.from_json(json)
# print the JSON string representation of the object
print(HistoricLogList.to_json())

# convert the object into a dict
historic_log_list_dict = historic_log_list_instance.to_dict()
# create an instance of HistoricLogList from a dict
historic_log_list_from_dict = HistoricLogList.from_dict(historic_log_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# HistoricLog


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **str** | Log timestamp. | [readonly] 
**content** | **str** | Content of the log. | [readonly] 
**pod_name** | **str** | Name of the pod the log came from. | [readonly] 
**container_name** | **str** | Name of the container the log came from. | [readonly] 

## Example

```python
from saturn_api.models.historic_log import HistoricLog

# TODO update the JSON string below
json = "{}"
# create an instance of HistoricLog from a JSON string
historic_log_instance = HistoricLog.from_json(json)
# print the JSON string representation of the object
print(HistoricLog.to_json())

# convert the object into a dict
historic_log_dict = historic_log_instance.to_dict()
# create an instance of HistoricLog from a dict
historic_log_from_dict = HistoricLog.from_dict(historic_log_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



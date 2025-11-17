# DailyUsageList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usage** | [**List[DailyUsage]**](DailyUsage.md) |  | 

## Example

```python
from saturn_api.models.daily_usage_list import DailyUsageList

# TODO update the JSON string below
json = "{}"
# create an instance of DailyUsageList from a JSON string
daily_usage_list_instance = DailyUsageList.from_json(json)
# print the JSON string representation of the object
print(DailyUsageList.to_json())

# convert the object into a dict
daily_usage_list_dict = daily_usage_list_instance.to_dict()
# create an instance of DailyUsageList from a dict
daily_usage_list_from_dict = DailyUsageList.from_dict(daily_usage_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



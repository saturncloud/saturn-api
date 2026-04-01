# DailyUsage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hours** | **float** | Compute hours used. | 
**dollars** | **float** | Dollars spent. | 
**var_date** | **date** | Date of the usage record. | 
**instance_type** | **str** | Instance type used. | 
**resource_type** | **str** | Resource type used. | 

## Example

```python
from saturn_api.models.daily_usage import DailyUsage

# TODO update the JSON string below
json = "{}"
# create an instance of DailyUsage from a JSON string
daily_usage_instance = DailyUsage.from_json(json)
# print the JSON string representation of the object
print(DailyUsage.to_json())

# convert the object into a dict
daily_usage_dict = daily_usage_instance.to_dict()
# create an instance of DailyUsage from a dict
daily_usage_from_dict = DailyUsage.from_dict(daily_usage_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



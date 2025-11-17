# UsageLimitsList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usage_limits** | [**List[UsageLimits]**](UsageLimits.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.usage_limits_list import UsageLimitsList

# TODO update the JSON string below
json = "{}"
# create an instance of UsageLimitsList from a JSON string
usage_limits_list_instance = UsageLimitsList.from_json(json)
# print the JSON string representation of the object
print(UsageLimitsList.to_json())

# convert the object into a dict
usage_limits_list_dict = usage_limits_list_instance.to_dict()
# create an instance of UsageLimitsList from a dict
usage_limits_list_from_dict = UsageLimitsList.from_dict(usage_limits_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



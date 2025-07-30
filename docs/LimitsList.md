# LimitsList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usage_limits** | [**List[Limits]**](Limits.md) |  | [optional] 
**prev_key** | **str** |  | [optional] 
**next_key** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.limits_list import LimitsList

# TODO update the JSON string below
json = "{}"
# create an instance of LimitsList from a JSON string
limits_list_instance = LimitsList.from_json(json)
# print the JSON string representation of the object
print(LimitsList.to_json())

# convert the object into a dict
limits_list_dict = limits_list_instance.to_dict()
# create an instance of LimitsList from a dict
limits_list_from_dict = LimitsList.from_dict(limits_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



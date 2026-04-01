# OwnerUsageList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**usage** | [**List[OwnerUsage]**](OwnerUsage.md) | List of owner usage records | [optional] 

## Example

```python
from saturn_api.models.owner_usage_list import OwnerUsageList

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerUsageList from a JSON string
owner_usage_list_instance = OwnerUsageList.from_json(json)
# print the JSON string representation of the object
print(OwnerUsageList.to_json())

# convert the object into a dict
owner_usage_list_dict = owner_usage_list_instance.to_dict()
# create an instance of OwnerUsageList from a dict
owner_usage_list_from_dict = OwnerUsageList.from_dict(owner_usage_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



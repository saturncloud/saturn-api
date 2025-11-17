# UsageOwner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**identity_type** | **str** |  | 
**user_id** | **str** |  | [optional] [readonly] 
**group_id** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.usage_owner import UsageOwner

# TODO update the JSON string below
json = "{}"
# create an instance of UsageOwner from a JSON string
usage_owner_instance = UsageOwner.from_json(json)
# print the JSON string representation of the object
print(UsageOwner.to_json())

# convert the object into a dict
usage_owner_dict = usage_owner_instance.to_dict()
# create an instance of UsageOwner from a dict
usage_owner_from_dict = UsageOwner.from_dict(usage_owner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



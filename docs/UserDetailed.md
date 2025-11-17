# UserDetailed


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**username** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**full_name** | **str** |  | [readonly] 
**email** | **str** |  | [readonly] 
**admin** | **bool** |  | [readonly] 
**locked** | **bool** |  | [readonly] 
**locked_reason** | **str** |  | [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [readonly] 
**active** | **bool** |  | [readonly] 

## Example

```python
from saturn_api.models.user_detailed import UserDetailed

# TODO update the JSON string below
json = "{}"
# create an instance of UserDetailed from a JSON string
user_detailed_instance = UserDetailed.from_json(json)
# print the JSON string representation of the object
print(UserDetailed.to_json())

# convert the object into a dict
user_detailed_dict = user_detailed_instance.to_dict()
# create an instance of UserDetailed from a dict
user_detailed_from_dict = UserDetailed.from_dict(user_detailed_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



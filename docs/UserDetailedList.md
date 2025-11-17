# UserDetailedList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**List[UserDetailed]**](UserDetailed.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.user_detailed_list import UserDetailedList

# TODO update the JSON string below
json = "{}"
# create an instance of UserDetailedList from a JSON string
user_detailed_list_instance = UserDetailedList.from_json(json)
# print the JSON string representation of the object
print(UserDetailedList.to_json())

# convert the object into a dict
user_detailed_list_dict = user_detailed_list_instance.to_dict()
# create an instance of UserDetailedList from a dict
user_detailed_list_from_dict = UserDetailedList.from_dict(user_detailed_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



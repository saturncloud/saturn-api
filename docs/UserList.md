# UserList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**List[User]**](User.md) | List of users. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] 
**next_key** | **str** | Next page key. | [optional] 

## Example

```python
from saturn_api.models.user_list import UserList

# TODO update the JSON string below
json = "{}"
# create an instance of UserList from a JSON string
user_list_instance = UserList.from_json(json)
# print the JSON string representation of the object
print(UserList.to_json())

# convert the object into a dict
user_list_dict = user_list_instance.to_dict()
# create an instance of UserList from a dict
user_list_from_dict = UserList.from_dict(user_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



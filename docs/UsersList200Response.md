# UsersList200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**List[UserDetailed]**](UserDetailed.md) | List of detailed users. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.users_list200_response import UsersList200Response

# TODO update the JSON string below
json = "{}"
# create an instance of UsersList200Response from a JSON string
users_list200_response_instance = UsersList200Response.from_json(json)
# print the JSON string representation of the object
print(UsersList200Response.to_json())

# convert the object into a dict
users_list200_response_dict = users_list200_response_instance.to_dict()
# create an instance of UsersList200Response from a dict
users_list200_response_from_dict = UsersList200Response.from_dict(users_list200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



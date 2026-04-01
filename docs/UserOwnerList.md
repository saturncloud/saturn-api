# UserOwnerList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owners** | [**List[OwnerUserDetailed]**](OwnerUserDetailed.md) | List of user owners. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.user_owner_list import UserOwnerList

# TODO update the JSON string below
json = "{}"
# create an instance of UserOwnerList from a JSON string
user_owner_list_instance = UserOwnerList.from_json(json)
# print the JSON string representation of the object
print(UserOwnerList.to_json())

# convert the object into a dict
user_owner_list_dict = user_owner_list_instance.to_dict()
# create an instance of UserOwnerList from a dict
user_owner_list_from_dict = UserOwnerList.from_dict(user_owner_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



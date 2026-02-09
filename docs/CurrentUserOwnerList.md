# CurrentUserOwnerList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owners** | [**List[OwnerUserDetailed]**](OwnerUserDetailed.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.current_user_owner_list import CurrentUserOwnerList

# TODO update the JSON string below
json = "{}"
# create an instance of CurrentUserOwnerList from a JSON string
current_user_owner_list_instance = CurrentUserOwnerList.from_json(json)
# print the JSON string representation of the object
print(CurrentUserOwnerList.to_json())

# convert the object into a dict
current_user_owner_list_dict = current_user_owner_list_instance.to_dict()
# create an instance of CurrentUserOwnerList from a dict
current_user_owner_list_from_dict = CurrentUserOwnerList.from_dict(current_user_owner_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



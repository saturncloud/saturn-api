# GroupMemberList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**List[User]**](User.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.group_member_list import GroupMemberList

# TODO update the JSON string below
json = "{}"
# create an instance of GroupMemberList from a JSON string
group_member_list_instance = GroupMemberList.from_json(json)
# print the JSON string representation of the object
print(GroupMemberList.to_json())

# convert the object into a dict
group_member_list_dict = group_member_list_instance.to_dict()
# create an instance of GroupMemberList from a dict
group_member_list_from_dict = GroupMemberList.from_dict(group_member_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



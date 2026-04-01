# GroupMemberCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | User ID to add to the group. | 

## Example

```python
from saturn_api.models.group_member_create import GroupMemberCreate

# TODO update the JSON string below
json = "{}"
# create an instance of GroupMemberCreate from a JSON string
group_member_create_instance = GroupMemberCreate.from_json(json)
# print the JSON string representation of the object
print(GroupMemberCreate.to_json())

# convert the object into a dict
group_member_create_dict = group_member_create_instance.to_dict()
# create an instance of GroupMemberCreate from a dict
group_member_create_from_dict = GroupMemberCreate.from_dict(group_member_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



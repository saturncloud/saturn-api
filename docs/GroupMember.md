# GroupMember


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the group member | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**user_id** | **str** | User ID of the group member. | [readonly] 
**group_id** | **str** | Group ID of the group member. | [readonly] 

## Example

```python
from saturn_api.models.group_member import GroupMember

# TODO update the JSON string below
json = "{}"
# create an instance of GroupMember from a JSON string
group_member_instance = GroupMember.from_json(json)
# print the JSON string representation of the object
print(GroupMember.to_json())

# convert the object into a dict
group_member_dict = group_member_instance.to_dict()
# create an instance of GroupMember from a dict
group_member_from_dict = GroupMember.from_dict(group_member_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



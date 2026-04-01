# Group


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the group. | [readonly] 
**groupname** | **str** | Name of the group. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**description** | **str** | Description of the group. | [readonly] 
**avatar_url** | **str** | Avatar URL for the group. | [readonly] 
**is_multiple_ssh_keys** | **bool** | Enable multiple SSH keys. | [readonly] 
**org_id** | **str** | Org ID that the group belongs to. | [readonly] 
**org_name** | **str** | Org name that the group belongs to. | [readonly] 
**org_admin** | **bool** | Enable group to take privileged actions on its org. | [readonly] 

## Example

```python
from saturn_api.models.group import Group

# TODO update the JSON string below
json = "{}"
# create an instance of Group from a JSON string
group_instance = Group.from_json(json)
# print the JSON string representation of the object
print(Group.to_json())

# convert the object into a dict
group_dict = group_instance.to_dict()
# create an instance of Group from a dict
group_from_dict = Group.from_dict(group_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



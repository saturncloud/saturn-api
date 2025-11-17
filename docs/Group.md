# Group


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**groupname** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [readonly] 
**org_id** | **str** |  | [readonly] 
**org_admin** | **bool** |  | [readonly] 

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



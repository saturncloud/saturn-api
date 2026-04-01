# GroupUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groupname** | **str** | Name of the group. | [optional] 
**description** | **str** | Description of the group. | [optional] 
**is_multiple_ssh_keys** | **bool** | Enable multiple SSH keys. | [optional] 
**org_admin** | **bool** | Enable group to take privileged actions on its org. | [optional] 

## Example

```python
from saturn_api.models.group_update import GroupUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of GroupUpdate from a JSON string
group_update_instance = GroupUpdate.from_json(json)
# print the JSON string representation of the object
print(GroupUpdate.to_json())

# convert the object into a dict
group_update_dict = group_update_instance.to_dict()
# create an instance of GroupUpdate from a dict
group_update_from_dict = GroupUpdate.from_dict(group_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



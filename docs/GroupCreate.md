# GroupCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groupname** | **str** |  | 
**org_id** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**is_multiple_ssh_keys** | **bool** |  | [optional] [default to False]
**org_admin** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.group_create import GroupCreate

# TODO update the JSON string below
json = "{}"
# create an instance of GroupCreate from a JSON string
group_create_instance = GroupCreate.from_json(json)
# print the JSON string representation of the object
print(GroupCreate.to_json())

# convert the object into a dict
group_create_dict = group_create_instance.to_dict()
# create an instance of GroupCreate from a dict
group_create_from_dict = GroupCreate.from_dict(group_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



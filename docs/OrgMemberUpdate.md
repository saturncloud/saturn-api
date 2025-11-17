# OrgMemberUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**org_admin** | **bool** |  | [optional] 
**limits_id** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.org_member_update import OrgMemberUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of OrgMemberUpdate from a JSON string
org_member_update_instance = OrgMemberUpdate.from_json(json)
# print the JSON string representation of the object
print(OrgMemberUpdate.to_json())

# convert the object into a dict
org_member_update_dict = org_member_update_instance.to_dict()
# create an instance of OrgMemberUpdate from a dict
org_member_update_from_dict = OrgMemberUpdate.from_dict(org_member_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



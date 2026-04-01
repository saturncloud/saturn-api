# OrgMemberCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | User ID to add to the org. | 
**org_admin** | **bool** | Enable user to take privileged actions on the org. | [optional] [default to False]
**limits_id** | **str** | Usage limits ID applied to this org member. | [optional] 

## Example

```python
from saturn_api.models.org_member_create import OrgMemberCreate

# TODO update the JSON string below
json = "{}"
# create an instance of OrgMemberCreate from a JSON string
org_member_create_instance = OrgMemberCreate.from_json(json)
# print the JSON string representation of the object
print(OrgMemberCreate.to_json())

# convert the object into a dict
org_member_create_dict = org_member_create_instance.to_dict()
# create an instance of OrgMemberCreate from a dict
org_member_create_from_dict = OrgMemberCreate.from_dict(org_member_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



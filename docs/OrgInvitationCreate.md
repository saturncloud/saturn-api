# OrgInvitationCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** | Email that the org invitation is sent to. | 
**invitee_name** | **str** |  | [optional] 
**invitor_name** | **str** | Name of the person sending the invite. | [optional] 

## Example

```python
from saturn_api.models.org_invitation_create import OrgInvitationCreate

# TODO update the JSON string below
json = "{}"
# create an instance of OrgInvitationCreate from a JSON string
org_invitation_create_instance = OrgInvitationCreate.from_json(json)
# print the JSON string representation of the object
print(OrgInvitationCreate.to_json())

# convert the object into a dict
org_invitation_create_dict = org_invitation_create_instance.to_dict()
# create an instance of OrgInvitationCreate from a dict
org_invitation_create_from_dict = OrgInvitationCreate.from_dict(org_invitation_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



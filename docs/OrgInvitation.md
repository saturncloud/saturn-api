# OrgInvitation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the org invitation. | [readonly] 
**email** | **str** | Email that the org invitation is sent to. | [readonly] 
**invitee_name** | **str** | Name of the person being invited. | [readonly] 
**invitor** | [**User**](User.md) | User that sent the invite. | [readonly] 
**invitor_name** | **str** | Name of the person sending the invite. | [readonly] 
**org_id** | **str** | Org ID that the user is being invited to. | [readonly] 
**org_name** | **str** | Org name that the user is being invited to. | [readonly] 
**status** | [**InvitationStatus**](InvitationStatus.md) |  | 
**expiration** | **str** | Invitation expiration timestamp. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 

## Example

```python
from saturn_api.models.org_invitation import OrgInvitation

# TODO update the JSON string below
json = "{}"
# create an instance of OrgInvitation from a JSON string
org_invitation_instance = OrgInvitation.from_json(json)
# print the JSON string representation of the object
print(OrgInvitation.to_json())

# convert the object into a dict
org_invitation_dict = org_invitation_instance.to_dict()
# create an instance of OrgInvitation from a dict
org_invitation_from_dict = OrgInvitation.from_dict(org_invitation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



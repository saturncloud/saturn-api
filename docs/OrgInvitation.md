# OrgInvitation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**email** | **str** |  | [readonly] 
**invitee_name** | **str** |  | [readonly] 
**invitor** | [**User**](User.md) |  | [readonly] 
**invitor_name** | **str** |  | [readonly] 
**org_id** | **str** |  | [readonly] 
**org_name** | **str** |  | [readonly] 
**status** | [**InvitationStatus**](InvitationStatus.md) |  | 
**expiration** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 

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



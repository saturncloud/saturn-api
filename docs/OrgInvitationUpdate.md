# OrgInvitationUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**InvitationStatus**](InvitationStatus.md) |  | 

## Example

```python
from saturn_api.models.org_invitation_update import OrgInvitationUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of OrgInvitationUpdate from a JSON string
org_invitation_update_instance = OrgInvitationUpdate.from_json(json)
# print the JSON string representation of the object
print(OrgInvitationUpdate.to_json())

# convert the object into a dict
org_invitation_update_dict = org_invitation_update_instance.to_dict()
# create an instance of OrgInvitationUpdate from a dict
org_invitation_update_from_dict = OrgInvitationUpdate.from_dict(org_invitation_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



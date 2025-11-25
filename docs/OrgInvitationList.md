# OrgInvitationList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invitations** | [**List[OrgInvitation]**](OrgInvitation.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.org_invitation_list import OrgInvitationList

# TODO update the JSON string below
json = "{}"
# create an instance of OrgInvitationList from a JSON string
org_invitation_list_instance = OrgInvitationList.from_json(json)
# print the JSON string representation of the object
print(OrgInvitationList.to_json())

# convert the object into a dict
org_invitation_list_dict = org_invitation_list_instance.to_dict()
# create an instance of OrgInvitationList from a dict
org_invitation_list_from_dict = OrgInvitationList.from_dict(org_invitation_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



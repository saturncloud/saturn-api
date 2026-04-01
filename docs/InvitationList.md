# InvitationList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invitations** | [**List[Invitation]**](Invitation.md) | List of invitations. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.invitation_list import InvitationList

# TODO update the JSON string below
json = "{}"
# create an instance of InvitationList from a JSON string
invitation_list_instance = InvitationList.from_json(json)
# print the JSON string representation of the object
print(InvitationList.to_json())

# convert the object into a dict
invitation_list_dict = invitation_list_instance.to_dict()
# create an instance of InvitationList from a dict
invitation_list_from_dict = InvitationList.from_dict(invitation_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



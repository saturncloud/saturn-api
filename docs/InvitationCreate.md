# InvitationCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | 
**invitee_name** | **str** |  | [optional] 
**invitor_name** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.invitation_create import InvitationCreate

# TODO update the JSON string below
json = "{}"
# create an instance of InvitationCreate from a JSON string
invitation_create_instance = InvitationCreate.from_json(json)
# print the JSON string representation of the object
print(InvitationCreate.to_json())

# convert the object into a dict
invitation_create_dict = invitation_create_instance.to_dict()
# create an instance of InvitationCreate from a dict
invitation_create_from_dict = InvitationCreate.from_dict(invitation_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



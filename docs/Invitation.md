# Invitation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the invitation. | [readonly] 
**email** | **str** | Email that the invitation is sent to | [readonly] 
**invitee_name** | **str** | Name of the person being invited. | [readonly] 
**invitor** | [**User**](User.md) | User that sent the invite. | [readonly] 
**invitor_name** | **str** | Name of the person sending the invite. | [readonly] 
**status** | **str** | Status of the invitation. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 

## Example

```python
from saturn_api.models.invitation import Invitation

# TODO update the JSON string below
json = "{}"
# create an instance of Invitation from a JSON string
invitation_instance = Invitation.from_json(json)
# print the JSON string representation of the object
print(Invitation.to_json())

# convert the object into a dict
invitation_dict = invitation_instance.to_dict()
# create an instance of Invitation from a dict
invitation_from_dict = Invitation.from_dict(invitation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



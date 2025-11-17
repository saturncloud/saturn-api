# InvitationUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**InvitationStatus**](InvitationStatus.md) |  | 

## Example

```python
from saturn_api.models.invitation_update import InvitationUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of InvitationUpdate from a JSON string
invitation_update_instance = InvitationUpdate.from_json(json)
# print the JSON string representation of the object
print(InvitationUpdate.to_json())

# convert the object into a dict
invitation_update_dict = invitation_update_instance.to_dict()
# create an instance of InvitationUpdate from a dict
invitation_update_from_dict = InvitationUpdate.from_dict(invitation_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



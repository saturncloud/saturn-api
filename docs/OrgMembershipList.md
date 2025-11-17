# OrgMembershipList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**memberships** | [**List[OrgMemberDetailed]**](OrgMemberDetailed.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.org_membership_list import OrgMembershipList

# TODO update the JSON string below
json = "{}"
# create an instance of OrgMembershipList from a JSON string
org_membership_list_instance = OrgMembershipList.from_json(json)
# print the JSON string representation of the object
print(OrgMembershipList.to_json())

# convert the object into a dict
org_membership_list_dict = org_membership_list_instance.to_dict()
# create an instance of OrgMembershipList from a dict
org_membership_list_from_dict = OrgMembershipList.from_dict(org_membership_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



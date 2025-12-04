# OrgMemberDetailed


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**identity_name** | **str** |  | [readonly] 
**org_name** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**org_admin** | **bool** |  | [readonly] 
**org_id** | **str** |  | [readonly] 
**user_id** | **str** |  | [readonly] 
**limits_id** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [readonly] 
**org** | [**Org**](Org.md) |  | [readonly] 
**user** | [**UserDetailed**](UserDetailed.md) |  | [readonly] 
**limits** | [**UsageLimits**](UsageLimits.md) |  | [readonly] 

## Example

```python
from saturn_api.models.org_member_detailed import OrgMemberDetailed

# TODO update the JSON string below
json = "{}"
# create an instance of OrgMemberDetailed from a JSON string
org_member_detailed_instance = OrgMemberDetailed.from_json(json)
# print the JSON string representation of the object
print(OrgMemberDetailed.to_json())

# convert the object into a dict
org_member_detailed_dict = org_member_detailed_instance.to_dict()
# create an instance of OrgMemberDetailed from a dict
org_member_detailed_from_dict = OrgMemberDetailed.from_dict(org_member_detailed_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



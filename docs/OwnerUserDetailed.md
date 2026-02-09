# OwnerUserDetailed


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
**identity_type** | [**IdentityType**](IdentityType.md) |  | 
**avatar_url** | **str** |  | [readonly] 
**limits_id** | **str** |  | [optional] [readonly] 
**org** | [**Org**](Org.md) |  | [readonly] 
**user** | [**UserDetailed**](UserDetailed.md) |  | [readonly] 
**limits** | [**UsageLimits**](UsageLimits.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.owner_user_detailed import OwnerUserDetailed

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerUserDetailed from a JSON string
owner_user_detailed_instance = OwnerUserDetailed.from_json(json)
# print the JSON string representation of the object
print(OwnerUserDetailed.to_json())

# convert the object into a dict
owner_user_detailed_dict = owner_user_detailed_instance.to_dict()
# create an instance of OwnerUserDetailed from a dict
owner_user_detailed_from_dict = OwnerUserDetailed.from_dict(owner_user_detailed_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



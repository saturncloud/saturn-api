# OwnerDetailed


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**identity_name** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**org_admin** | **bool** |  | [readonly] 
**org_id** | **str** |  | [readonly] 
**user_id** | **str** |  | [readonly] 
**group_id** | **str** |  | [readonly] 
**identity_type** | [**IdentityType**](IdentityType.md) |  | 
**limits_id** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [readonly] 
**org** | [**Org**](Org.md) |  | [readonly] 
**user** | [**UserDetailed**](UserDetailed.md) |  | [readonly] 
**group** | [**Group**](Group.md) |  | [readonly] 
**limits** | [**UsageLimits**](UsageLimits.md) |  | [readonly] 

## Example

```python
from saturn_api.models.owner_detailed import OwnerDetailed

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerDetailed from a JSON string
owner_detailed_instance = OwnerDetailed.from_json(json)
# print the JSON string representation of the object
print(OwnerDetailed.to_json())

# convert the object into a dict
owner_detailed_dict = owner_detailed_instance.to_dict()
# create an instance of OwnerDetailed from a dict
owner_detailed_from_dict = OwnerDetailed.from_dict(owner_detailed_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



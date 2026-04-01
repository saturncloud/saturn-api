# OwnerDetailed


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the owner | [readonly] 
**name** | **str** | Name of the owner (format: &#39;&lt;org&gt;/&lt;identity&gt;&#39;) | [readonly] 
**identity_name** | **str** | Name of the owner&#39;s identity | [readonly] 
**org_name** | **str** | Name of the org the owner belongs to. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**org_admin** | **bool** | Enable the owner to take privileged actions on its org. | [readonly] 
**org_id** | **str** | Org ID the owner belongs to. | [readonly] 
**user_id** | **str** | User ID of the owner. | [optional] [readonly] 
**group_id** | **str** | Group ID of the owner. | [optional] [readonly] 
**identity_type** | [**IdentityType**](IdentityType.md) |  | 
**avatar_url** | **str** | Avatar URL of the owner&#39;s identity. | [readonly] 
**limits_id** | **str** | Usage limits ID applied to the owner. | [optional] [readonly] 
**org** | [**Org**](Org.md) | Org that the owner belongs to. | [readonly] 
**user** | [**UserDetailed**](UserDetailed.md) | User identity of the owner. | [optional] [readonly] 
**group** | [**Group**](Group.md) | Group identity of the owner. | [optional] [readonly] 
**limits** | [**UsageLimits**](UsageLimits.md) | Usage limits applied to the owner. | [optional] [readonly] 

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



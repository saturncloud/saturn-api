# Owner


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
**group_id** | **str** |  | [readonly] 
**identity_type** | [**IdentityType**](IdentityType.md) |  | 
**limits_id** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [readonly] 

## Example

```python
from saturn_api.models.owner import Owner

# TODO update the JSON string below
json = "{}"
# create an instance of Owner from a JSON string
owner_instance = Owner.from_json(json)
# print the JSON string representation of the object
print(Owner.to_json())

# convert the object into a dict
owner_dict = owner_instance.to_dict()
# create an instance of Owner from a dict
owner_from_dict = Owner.from_dict(owner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



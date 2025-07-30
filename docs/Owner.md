# Owner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] [readonly] 
**name** | **str** |  | [optional] [readonly] 
**identity_name** | **str** |  | [optional] [readonly] 
**created_at** | **str** |  | [optional] [readonly] 
**org_admin** | **bool** |  | [optional] 
**org_id** | **str** |  | [optional] [readonly] 
**user_id** | **str** |  | [optional] [readonly] 
**group_id** | **str** |  | [optional] [readonly] 
**identity_type** | **str** |  | [optional] [readonly] 
**limits_id** | **str** |  | [optional] [readonly] 
**avatar_url** | **str** |  | [optional] [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [optional] [readonly] 

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



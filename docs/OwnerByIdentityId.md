# OwnerByIdentityId


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | Reference owner by user ID. | [optional] 
**group_id** | **str** | Reference owner by group ID. | [optional] 
**org_id** | **str** | Reference owner by org ID. | [optional] 

## Example

```python
from saturn_api.models.owner_by_identity_id import OwnerByIdentityId

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerByIdentityId from a JSON string
owner_by_identity_id_instance = OwnerByIdentityId.from_json(json)
# print the JSON string representation of the object
print(OwnerByIdentityId.to_json())

# convert the object into a dict
owner_by_identity_id_dict = owner_by_identity_id_instance.to_dict()
# create an instance of OwnerByIdentityId from a dict
owner_by_identity_id_from_dict = OwnerByIdentityId.from_dict(owner_by_identity_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



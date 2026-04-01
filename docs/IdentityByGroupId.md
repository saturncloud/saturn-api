# IdentityByGroupId


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_id** | **str** | Identity reference by group ID | 

## Example

```python
from saturn_api.models.identity_by_group_id import IdentityByGroupId

# TODO update the JSON string below
json = "{}"
# create an instance of IdentityByGroupId from a JSON string
identity_by_group_id_instance = IdentityByGroupId.from_json(json)
# print the JSON string representation of the object
print(IdentityByGroupId.to_json())

# convert the object into a dict
identity_by_group_id_dict = identity_by_group_id_instance.to_dict()
# create an instance of IdentityByGroupId from a dict
identity_by_group_id_from_dict = IdentityByGroupId.from_dict(identity_by_group_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



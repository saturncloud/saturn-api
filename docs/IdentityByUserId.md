# IdentityByUserId


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** | Identity reference by user ID | 

## Example

```python
from saturn_api.models.identity_by_user_id import IdentityByUserId

# TODO update the JSON string below
json = "{}"
# create an instance of IdentityByUserId from a JSON string
identity_by_user_id_instance = IdentityByUserId.from_json(json)
# print the JSON string representation of the object
print(IdentityByUserId.to_json())

# convert the object into a dict
identity_by_user_id_dict = identity_by_user_id_instance.to_dict()
# create an instance of IdentityByUserId from a dict
identity_by_user_id_from_dict = IdentityByUserId.from_dict(identity_by_user_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



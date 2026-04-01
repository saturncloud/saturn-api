# Identity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the user or group. | [readonly] 
**avatar_url** | **str** | Avatar URL for the user or group. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**name** | **str** | Name of the user or group. | [readonly] 
**identity_type** | [**IdentityType**](IdentityType.md) |  | 

## Example

```python
from saturn_api.models.identity import Identity

# TODO update the JSON string below
json = "{}"
# create an instance of Identity from a JSON string
identity_instance = Identity.from_json(json)
# print the JSON string representation of the object
print(Identity.to_json())

# convert the object into a dict
identity_dict = identity_instance.to_dict()
# create an instance of Identity from a dict
identity_from_dict = Identity.from_dict(identity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



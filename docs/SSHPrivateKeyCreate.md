# SSHPrivateKeyCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**identity** | [**IdentityReference**](IdentityReference.md) |  | [optional] 
**value** | **str** |  | [optional] 
**location** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.ssh_private_key_create import SSHPrivateKeyCreate

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPrivateKeyCreate from a JSON string
ssh_private_key_create_instance = SSHPrivateKeyCreate.from_json(json)
# print the JSON string representation of the object
print(SSHPrivateKeyCreate.to_json())

# convert the object into a dict
ssh_private_key_create_dict = ssh_private_key_create_instance.to_dict()
# create an instance of SSHPrivateKeyCreate from a dict
ssh_private_key_create_from_dict = SSHPrivateKeyCreate.from_dict(ssh_private_key_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



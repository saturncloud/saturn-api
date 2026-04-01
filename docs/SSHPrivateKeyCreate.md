# SSHPrivateKeyCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the SSH private key. | 
**identity** | [**IdentityReference**](IdentityReference.md) | Reference to the identity that owns the SSH private key. | [optional] 
**value** | **str** | Value of the SSH private key. | [optional] 
**location** | **str** | Path to the SSH private key in resources. | [optional] 
**is_default** | **bool** | Enable SSH private key to be used for any external repositories that do not specify a key. | [optional] [default to False]

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



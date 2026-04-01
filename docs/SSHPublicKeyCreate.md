# SSHPublicKeyCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the SSH public key. | 
**identity** | [**IdentityReference**](IdentityReference.md) | Refence to the identity that owns the SSH public key. | [optional] 
**value** | **str** | Value of the SSH public key. | 

## Example

```python
from saturn_api.models.ssh_public_key_create import SSHPublicKeyCreate

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPublicKeyCreate from a JSON string
ssh_public_key_create_instance = SSHPublicKeyCreate.from_json(json)
# print the JSON string representation of the object
print(SSHPublicKeyCreate.to_json())

# convert the object into a dict
ssh_public_key_create_dict = ssh_public_key_create_instance.to_dict()
# create an instance of SSHPublicKeyCreate from a dict
ssh_public_key_create_from_dict = SSHPublicKeyCreate.from_dict(ssh_public_key_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



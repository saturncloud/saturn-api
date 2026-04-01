# SSHPrivateKey


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the SSH private key. | [readonly] 
**name** | **str** | Name of the SSH private key. | [readonly] 
**identity** | [**Identity**](Identity.md) | Identity that owns the SSH private key. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**public_key** | **str** | SSH public key associated with the private key. | [readonly] 
**location** | **str** | Path to the SSH private key in resources. | [readonly] 
**is_default** | **bool** | Enable SSH private key to be used for any external repositories that do not specify a key. | [readonly] 

## Example

```python
from saturn_api.models.ssh_private_key import SSHPrivateKey

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPrivateKey from a JSON string
ssh_private_key_instance = SSHPrivateKey.from_json(json)
# print the JSON string representation of the object
print(SSHPrivateKey.to_json())

# convert the object into a dict
ssh_private_key_dict = ssh_private_key_instance.to_dict()
# create an instance of SSHPrivateKey from a dict
ssh_private_key_from_dict = SSHPrivateKey.from_dict(ssh_private_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



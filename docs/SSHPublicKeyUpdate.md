# SSHPublicKeyUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the SSH public key. | [optional] 
**value** | **str** | Value of the SSH public key. | [optional] 

## Example

```python
from saturn_api.models.ssh_public_key_update import SSHPublicKeyUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPublicKeyUpdate from a JSON string
ssh_public_key_update_instance = SSHPublicKeyUpdate.from_json(json)
# print the JSON string representation of the object
print(SSHPublicKeyUpdate.to_json())

# convert the object into a dict
ssh_public_key_update_dict = ssh_public_key_update_instance.to_dict()
# create an instance of SSHPublicKeyUpdate from a dict
ssh_public_key_update_from_dict = SSHPublicKeyUpdate.from_dict(ssh_public_key_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



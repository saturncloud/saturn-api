# SSHPublicKey


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the SSH public key. | [readonly] 
**name** | **str** | Name of the SSH public key. | [readonly] 
**identity** | [**Identity**](Identity.md) | Identity that owns the SSH public key. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 

## Example

```python
from saturn_api.models.ssh_public_key import SSHPublicKey

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPublicKey from a JSON string
ssh_public_key_instance = SSHPublicKey.from_json(json)
# print the JSON string representation of the object
print(SSHPublicKey.to_json())

# convert the object into a dict
ssh_public_key_dict = ssh_public_key_instance.to_dict()
# create an instance of SSHPublicKey from a dict
ssh_public_key_from_dict = SSHPublicKey.from_dict(ssh_public_key_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SSHPrivateKeyPartial


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the SSH private key. | [readonly] 
**name** | **str** | Name of the SSH private key. | [readonly] 
**identity** | [**Identity**](Identity.md) | Identity that owns the SSH private key. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**location** | **str** | Path to the SSH private key in resources. | [readonly] 
**is_default** | **bool** | Enable SSH private key to be used for any external repositories that do not specify a key. | [readonly] 

## Example

```python
from saturn_api.models.ssh_private_key_partial import SSHPrivateKeyPartial

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPrivateKeyPartial from a JSON string
ssh_private_key_partial_instance = SSHPrivateKeyPartial.from_json(json)
# print the JSON string representation of the object
print(SSHPrivateKeyPartial.to_json())

# convert the object into a dict
ssh_private_key_partial_dict = ssh_private_key_partial_instance.to_dict()
# create an instance of SSHPrivateKeyPartial from a dict
ssh_private_key_partial_from_dict = SSHPrivateKeyPartial.from_dict(ssh_private_key_partial_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



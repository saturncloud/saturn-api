# SSHPrivateKey


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**identity** | [**Identity**](Identity.md) |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**public_key** | **str** |  | [readonly] 
**location** | **str** |  | [readonly] 
**is_default** | **bool** |  | [readonly] 

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



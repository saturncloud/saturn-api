# SSHPrivateKeyUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**value** | **str** |  | [optional] 
**location** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 

## Example

```python
from saturn_api.models.ssh_private_key_update import SSHPrivateKeyUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPrivateKeyUpdate from a JSON string
ssh_private_key_update_instance = SSHPrivateKeyUpdate.from_json(json)
# print the JSON string representation of the object
print(SSHPrivateKeyUpdate.to_json())

# convert the object into a dict
ssh_private_key_update_dict = ssh_private_key_update_instance.to_dict()
# create an instance of SSHPrivateKeyUpdate from a dict
ssh_private_key_update_from_dict = SSHPrivateKeyUpdate.from_dict(ssh_private_key_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



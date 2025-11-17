# SSHPrivateKeyList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssh_private_keys** | [**List[SSHPrivateKey]**](SSHPrivateKey.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.ssh_private_key_list import SSHPrivateKeyList

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPrivateKeyList from a JSON string
ssh_private_key_list_instance = SSHPrivateKeyList.from_json(json)
# print the JSON string representation of the object
print(SSHPrivateKeyList.to_json())

# convert the object into a dict
ssh_private_key_list_dict = ssh_private_key_list_instance.to_dict()
# create an instance of SSHPrivateKeyList from a dict
ssh_private_key_list_from_dict = SSHPrivateKeyList.from_dict(ssh_private_key_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



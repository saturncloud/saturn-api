# SSHPublicKeyList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ssh_public_keys** | [**List[SSHPublicKey]**](SSHPublicKey.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.ssh_public_key_list import SSHPublicKeyList

# TODO update the JSON string below
json = "{}"
# create an instance of SSHPublicKeyList from a JSON string
ssh_public_key_list_instance = SSHPublicKeyList.from_json(json)
# print the JSON string representation of the object
print(SSHPublicKeyList.to_json())

# convert the object into a dict
ssh_public_key_list_dict = ssh_public_key_list_instance.to_dict()
# create an instance of SSHPublicKeyList from a dict
ssh_public_key_list_from_dict = SSHPublicKeyList.from_dict(ssh_public_key_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



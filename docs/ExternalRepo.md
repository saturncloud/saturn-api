# ExternalRepo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**remote_url** | **str** |  | [readonly] 
**ssh_privatekey_id** | **str** |  | [optional] [readonly] 
**ssh_privatekey** | [**SSHPrivateKeyPartial**](SSHPrivateKeyPartial.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.external_repo import ExternalRepo

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepo from a JSON string
external_repo_instance = ExternalRepo.from_json(json)
# print the JSON string representation of the object
print(ExternalRepo.to_json())

# convert the object into a dict
external_repo_dict = external_repo_instance.to_dict()
# create an instance of ExternalRepo from a dict
external_repo_from_dict = ExternalRepo.from_dict(external_repo_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



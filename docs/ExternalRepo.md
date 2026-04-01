# ExternalRepo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the repository. | [readonly] 
**name** | **str** | Name of the repository. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the repository | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**remote_url** | **str** | Repository URL. | [readonly] 
**ssh_privatekey_id** | **str** | ID of an SSH Private Key with permission to pull the repository. | [optional] [readonly] 
**ssh_privatekey** | [**SSHPrivateKeyPartial**](SSHPrivateKeyPartial.md) | SSH Private Key information. | [optional] [readonly] 

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



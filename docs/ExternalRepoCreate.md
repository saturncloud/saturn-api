# ExternalRepoCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_url** | **str** | Repo URL. | 
**owner** | [**OwnerReference**](OwnerReference.md) | Owner of the repository. | [optional] 
**ssh_privatekey_id** | **str** | ID of an SSH Private Key with permission to pull the repository. | [optional] 

## Example

```python
from saturn_api.models.external_repo_create import ExternalRepoCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoCreate from a JSON string
external_repo_create_instance = ExternalRepoCreate.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoCreate.to_json())

# convert the object into a dict
external_repo_create_dict = external_repo_create_instance.to_dict()
# create an instance of ExternalRepoCreate from a dict
external_repo_create_from_dict = ExternalRepoCreate.from_dict(external_repo_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



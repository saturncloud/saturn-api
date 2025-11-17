# ExternalRepoList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_repos** | [**List[ExternalRepo]**](ExternalRepo.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.external_repo_list import ExternalRepoList

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoList from a JSON string
external_repo_list_instance = ExternalRepoList.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoList.to_json())

# convert the object into a dict
external_repo_list_dict = external_repo_list_instance.to_dict()
# create an instance of ExternalRepoList from a dict
external_repo_list_from_dict = ExternalRepoList.from_dict(external_repo_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



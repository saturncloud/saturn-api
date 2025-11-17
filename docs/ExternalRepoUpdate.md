# ExternalRepoUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remote_url** | **str** |  | [optional] 
**ssh_privatekey_id** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.external_repo_update import ExternalRepoUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoUpdate from a JSON string
external_repo_update_instance = ExternalRepoUpdate.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoUpdate.to_json())

# convert the object into a dict
external_repo_update_dict = external_repo_update_instance.to_dict()
# create an instance of ExternalRepoUpdate from a dict
external_repo_update_from_dict = ExternalRepoUpdate.from_dict(external_repo_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



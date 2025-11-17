# ExternalRepoAttachmentRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** |  | 
**path** | **str** |  | [optional] 
**on_restart** | **str** |  | [optional] 
**reference** | **str** |  | [optional] 
**reference_type** | **str** |  | [optional] [default to 'branch']

## Example

```python
from saturn_api.models.external_repo_attachment_recipe import ExternalRepoAttachmentRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalRepoAttachmentRecipe from a JSON string
external_repo_attachment_recipe_instance = ExternalRepoAttachmentRecipe.from_json(json)
# print the JSON string representation of the object
print(ExternalRepoAttachmentRecipe.to_json())

# convert the object into a dict
external_repo_attachment_recipe_dict = external_repo_attachment_recipe_instance.to_dict()
# create an instance of ExternalRepoAttachmentRecipe from a dict
external_repo_attachment_recipe_from_dict = ExternalRepoAttachmentRecipe.from_dict(external_repo_attachment_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



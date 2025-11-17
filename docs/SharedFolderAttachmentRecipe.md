# SharedFolderAttachmentRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**name** | **str** |  | 
**path** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.shared_folder_attachment_recipe import SharedFolderAttachmentRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolderAttachmentRecipe from a JSON string
shared_folder_attachment_recipe_instance = SharedFolderAttachmentRecipe.from_json(json)
# print the JSON string representation of the object
print(SharedFolderAttachmentRecipe.to_json())

# convert the object into a dict
shared_folder_attachment_recipe_dict = shared_folder_attachment_recipe_instance.to_dict()
# create an instance of SharedFolderAttachmentRecipe from a dict
shared_folder_attachment_recipe_from_dict = SharedFolderAttachmentRecipe.from_dict(shared_folder_attachment_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SecretAttachmentRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location** | **str** |  | 
**attachment_type** | [**SecretAttachmentType**](SecretAttachmentType.md) |  | 
**description** | **str** |  | [optional] [default to '']
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.secret_attachment_recipe import SecretAttachmentRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of SecretAttachmentRecipe from a JSON string
secret_attachment_recipe_instance = SecretAttachmentRecipe.from_json(json)
# print the JSON string representation of the object
print(SecretAttachmentRecipe.to_json())

# convert the object into a dict
secret_attachment_recipe_dict = secret_attachment_recipe_instance.to_dict()
# create an instance of SecretAttachmentRecipe from a dict
secret_attachment_recipe_from_dict = SecretAttachmentRecipe.from_dict(secret_attachment_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ExtraPackagesRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pip** | [**ExtraPackagesRecipePip**](ExtraPackagesRecipePip.md) |  | [optional] 
**conda** | [**ExtraPackagesRecipeConda**](ExtraPackagesRecipeConda.md) |  | [optional] 
**apt** | [**ExtraPackagesRecipeApt**](ExtraPackagesRecipeApt.md) |  | [optional] 
**cran** | [**ExtraPackagesRecipeApt**](ExtraPackagesRecipeApt.md) |  | [optional] 
**remotes** | [**ExtraPackagesRecipeApt**](ExtraPackagesRecipeApt.md) |  | [optional] 
**bioconductor** | [**ExtraPackagesRecipeApt**](ExtraPackagesRecipeApt.md) |  | [optional] 

## Example

```python
from saturn_api.models.extra_packages_recipe import ExtraPackagesRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of ExtraPackagesRecipe from a JSON string
extra_packages_recipe_instance = ExtraPackagesRecipe.from_json(json)
# print the JSON string representation of the object
print(ExtraPackagesRecipe.to_json())

# convert the object into a dict
extra_packages_recipe_dict = extra_packages_recipe_instance.to_dict()
# create an instance of ExtraPackagesRecipe from a dict
extra_packages_recipe_from_dict = ExtraPackagesRecipe.from_dict(extra_packages_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



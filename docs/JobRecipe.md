# JobRecipe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schema_version** | **str** |  | [optional] [default to '2025.10.01']
**type** | **str** |  | 
**spec** | [**JobSpec**](JobSpec.md) |  | 
**state** | [**ResourceState**](ResourceState.md) |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.job_recipe import JobRecipe

# TODO update the JSON string below
json = "{}"
# create an instance of JobRecipe from a JSON string
job_recipe_instance = JobRecipe.from_json(json)
# print the JSON string representation of the object
print(JobRecipe.to_json())

# convert the object into a dict
job_recipe_dict = job_recipe_instance.to_dict()
# create an instance of JobRecipe from a dict
job_recipe_from_dict = JobRecipe.from_dict(job_recipe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# DefaultImages


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | [**ImageTag**](ImageTag.md) |  | [optional] 
**gpu** | [**ImageTag**](ImageTag.md) |  | [optional] 

## Example

```python
from saturn_api.models.default_images import DefaultImages

# TODO update the JSON string below
json = "{}"
# create an instance of DefaultImages from a JSON string
default_images_instance = DefaultImages.from_json(json)
# print the JSON string representation of the object
print(DefaultImages.to_json())

# convert the object into a dict
default_images_dict = default_images_instance.to_dict()
# create an instance of DefaultImages from a dict
default_images_from_dict = DefaultImages.from_dict(default_images_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



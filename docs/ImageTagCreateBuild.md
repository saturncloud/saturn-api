# ImageTagCreateBuild


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** | Version of the image tag. | 
**description** | **str** | Description of the image tag. | [optional] [default to '']
**build_data** | [**BuildData**](BuildData.md) | Build data for the image tag. | [optional] 

## Example

```python
from saturn_api.models.image_tag_create_build import ImageTagCreateBuild

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagCreateBuild from a JSON string
image_tag_create_build_instance = ImageTagCreateBuild.from_json(json)
# print the JSON string representation of the object
print(ImageTagCreateBuild.to_json())

# convert the object into a dict
image_tag_create_build_dict = image_tag_create_build_instance.to_dict()
# create an instance of ImageTagCreateBuild from a dict
image_tag_create_build_from_dict = ImageTagCreateBuild.from_dict(image_tag_create_build_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



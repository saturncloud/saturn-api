# ImageTagList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image_tags** | [**List[ImageTag]**](ImageTag.md) | List of image tags. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.image_tag_list import ImageTagList

# TODO update the JSON string below
json = "{}"
# create an instance of ImageTagList from a JSON string
image_tag_list_instance = ImageTagList.from_json(json)
# print the JSON string representation of the object
print(ImageTagList.to_json())

# convert the object into a dict
image_tag_list_dict = image_tag_list_instance.to_dict()
# create an instance of ImageTagList from a dict
image_tag_list_from_dict = ImageTagList.from_dict(image_tag_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



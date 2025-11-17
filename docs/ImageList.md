# ImageList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**images** | [**List[Image]**](Image.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.image_list import ImageList

# TODO update the JSON string below
json = "{}"
# create an instance of ImageList from a JSON string
image_list_instance = ImageList.from_json(json)
# print the JSON string representation of the object
print(ImageList.to_json())

# convert the object into a dict
image_list_dict = image_list_instance.to_dict()
# create an instance of ImageList from a dict
image_list_from_dict = ImageList.from_dict(image_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



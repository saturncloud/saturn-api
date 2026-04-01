# ResourceTemplate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the resource template. | [readonly] 
**name** | **str** | Name of the resource template. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the resource template. | [readonly] 
**description** | **str** | Description of the resource template. | [readonly] 
**created_at** | **str** | Creation timestamp | [readonly] 
**thumbnail_image_url** | **str** | Thumbnail image URL to display with the resource template. | [readonly] 
**weight** | **int** | Gallery ordering weight. | [readonly] 
**recipe** | **Dict[str, object]** | Resource recipe to apply. | [readonly] 
**access** | [**ResourceTemplateAccessLevel**](ResourceTemplateAccessLevel.md) |  | 
**in_gallery** | **bool** | Enable displaying the resource template in the dashboard gallery. | [optional] 
**editable** | **bool** | True if the resource template is editable by the authenticated user/group. | [readonly] 

## Example

```python
from saturn_api.models.resource_template import ResourceTemplate

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceTemplate from a JSON string
resource_template_instance = ResourceTemplate.from_json(json)
# print the JSON string representation of the object
print(ResourceTemplate.to_json())

# convert the object into a dict
resource_template_dict = resource_template_instance.to_dict()
# create an instance of ResourceTemplate from a dict
resource_template_from_dict = ResourceTemplate.from_dict(resource_template_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



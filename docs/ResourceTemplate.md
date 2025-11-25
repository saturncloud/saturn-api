# ResourceTemplate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**description** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**thumbnail_image_url** | **str** |  | [readonly] 
**weight** | **int** |  | [readonly] 
**recipe** | **Dict[str, object]** |  | [readonly] 
**access** | [**ResourceTemplateAccessLevel**](ResourceTemplateAccessLevel.md) |  | 
**editable** | **bool** |  | [readonly] 

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



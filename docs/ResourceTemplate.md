# ResourceTemplate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owner_id** | **str** |  | [optional] 
**owner_name** | **str** |  | [optional] 
**user_id** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**org_id** | **str** |  | [optional] 
**owner** | [**Owner**](Owner.md) |  | [optional] [readonly] 
**name** | **str** |  | 
**description** | **str** |  | 
**thumbnail_image_url** | **str** |  | [optional] 
**weight** | **int** |  | [optional] 
**recipe** | **Dict[str, object]** |  | 
**access** | **str** |  | [optional] 
**id** | **str** |  | [optional] [readonly] 
**editable** | **bool** |  | [optional] [readonly] 
**created_at** | **str** |  | [optional] [readonly] 

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



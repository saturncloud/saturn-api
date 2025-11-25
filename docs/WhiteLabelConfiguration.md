# WhiteLabelConfiguration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | 
**brand_name** | **str** |  | 
**brand_short_name** | **str** |  | [optional] 
**logo_icon_url** | **str** |  | 
**logo_full_url** | **str** |  | 
**favicon_url** | **str** |  | [optional] 
**primary_color** | **str** |  | 
**support_email** | **str** |  | 
**website_url** | **str** |  | 
**docs_url** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.white_label_configuration import WhiteLabelConfiguration

# TODO update the JSON string below
json = "{}"
# create an instance of WhiteLabelConfiguration from a JSON string
white_label_configuration_instance = WhiteLabelConfiguration.from_json(json)
# print the JSON string representation of the object
print(WhiteLabelConfiguration.to_json())

# convert the object into a dict
white_label_configuration_dict = white_label_configuration_instance.to_dict()
# create an instance of WhiteLabelConfiguration from a dict
white_label_configuration_from_dict = WhiteLabelConfiguration.from_dict(white_label_configuration_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



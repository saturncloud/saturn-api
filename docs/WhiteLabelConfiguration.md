# WhiteLabelConfiguration


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** | Enable whitelabel configuration. | 
**brand_name** | **str** | Whitelabeled brand name. | 
**brand_short_name** | **str** | Short version of the brand name. | [optional] 
**logo_icon_url** | **str** | Brand icon URL. | 
**logo_full_url** | **str** | Brand full icon URL. | 
**favicon_url** | **str** | Favicon URL. | [optional] 
**primary_color** | **str** | Primary frontend color. | 
**support_email** | **str** | Support contact email. | 
**website_url** | **str** | Website URL. | 
**docs_url** | **str** | Documentation URL. | [optional] 

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



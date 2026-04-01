# OrgCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the org. | 
**email** | **str** | Email of the org. | 
**description** | **str** | Description of the org. | [optional] [default to '']
**website_url** | **str** | Website URL of the org. | [optional] 
**logo_image_url** | **str** | Logo of the org. | [optional] 
**limits_id** | **str** | Usage limits ID applied to the entire org. (Admin only) | [optional] 

## Example

```python
from saturn_api.models.org_create import OrgCreate

# TODO update the JSON string below
json = "{}"
# create an instance of OrgCreate from a JSON string
org_create_instance = OrgCreate.from_json(json)
# print the JSON string representation of the object
print(OrgCreate.to_json())

# convert the object into a dict
org_create_dict = org_create_instance.to_dict()
# create an instance of OrgCreate from a dict
org_create_from_dict = OrgCreate.from_dict(org_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



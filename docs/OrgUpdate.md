# OrgUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**website_url** | **str** |  | [optional] 
**logo_image_url** | **str** |  | [optional] 
**limits_id** | **str** |  | [optional] 
**locked** | **bool** |  | [optional] 

## Example

```python
from saturn_api.models.org_update import OrgUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of OrgUpdate from a JSON string
org_update_instance = OrgUpdate.from_json(json)
# print the JSON string representation of the object
print(OrgUpdate.to_json())

# convert the object into a dict
org_update_dict = org_update_instance.to_dict()
# create an instance of OrgUpdate from a dict
org_update_from_dict = OrgUpdate.from_dict(org_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



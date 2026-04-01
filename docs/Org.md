# Org


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the org. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**avatar_url** | **str** | Avatar URL for the org. | [readonly] 
**name** | **str** | Name of the org. | [readonly] 
**email** | **str** | Email of the org. | [readonly] 
**description** | **str** | Description of the org. | [readonly] 
**website_url** | **str** | Website URL of the org. | [readonly] 
**logo_image_url** | **str** | Logo of the org. | [readonly] 
**limits_id** | **str** | Usage limits ID applied to the entire org. | [readonly] 
**is_primary** | **bool** | Primary org for the account. | [readonly] 
**locked** | **bool** | Locked orgs have restricted access to the API. | [readonly] 
**locked_reason** | **str** | Reason for the org being locked. | [readonly] 

## Example

```python
from saturn_api.models.org import Org

# TODO update the JSON string below
json = "{}"
# create an instance of Org from a JSON string
org_instance = Org.from_json(json)
# print the JSON string representation of the object
print(Org.to_json())

# convert the object into a dict
org_dict = org_instance.to_dict()
# create an instance of Org from a dict
org_from_dict = Org.from_dict(org_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



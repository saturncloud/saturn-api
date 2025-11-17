# Org


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**email** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**website_url** | **str** |  | [readonly] 
**logo_image_url** | **str** |  | [readonly] 
**limits_id** | **str** |  | [readonly] 
**is_primary** | **bool** |  | [readonly] 
**locked** | **bool** |  | [readonly] 
**locked_reason** | **str** |  | [readonly] 

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



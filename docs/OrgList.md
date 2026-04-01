# OrgList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**orgs** | [**List[Org]**](Org.md) | List of orgs. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.org_list import OrgList

# TODO update the JSON string below
json = "{}"
# create an instance of OrgList from a JSON string
org_list_instance = OrgList.from_json(json)
# print the JSON string representation of the object
print(OrgList.to_json())

# convert the object into a dict
org_list_dict = org_list_instance.to_dict()
# create an instance of OrgList from a dict
org_list_from_dict = OrgList.from_dict(org_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



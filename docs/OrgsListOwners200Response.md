# OrgsListOwners200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owners** | [**List[OwnerDetailed]**](OwnerDetailed.md) | List of detailed owners. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.orgs_list_owners200_response import OrgsListOwners200Response

# TODO update the JSON string below
json = "{}"
# create an instance of OrgsListOwners200Response from a JSON string
orgs_list_owners200_response_instance = OrgsListOwners200Response.from_json(json)
# print the JSON string representation of the object
print(OrgsListOwners200Response.to_json())

# convert the object into a dict
orgs_list_owners200_response_dict = orgs_list_owners200_response_instance.to_dict()
# create an instance of OrgsListOwners200Response from a dict
orgs_list_owners200_response_from_dict = OrgsListOwners200Response.from_dict(orgs_list_owners200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



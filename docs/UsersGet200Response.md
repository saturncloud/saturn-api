# UsersGet200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 
**username** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**full_name** | **str** |  | [readonly] 
**email** | **str** |  | [readonly] 
**admin** | **bool** |  | [readonly] 
**locked** | **bool** |  | [readonly] 
**locked_reason** | **str** |  | [readonly] 
**is_multiple_ssh_keys** | **bool** |  | [readonly] 
**active** | **bool** |  | [readonly] 

## Example

```python
from saturn_api.models.users_get200_response import UsersGet200Response

# TODO update the JSON string below
json = "{}"
# create an instance of UsersGet200Response from a JSON string
users_get200_response_instance = UsersGet200Response.from_json(json)
# print the JSON string representation of the object
print(UsersGet200Response.to_json())

# convert the object into a dict
users_get200_response_dict = users_get200_response_instance.to_dict()
# create an instance of UsersGet200Response from a dict
users_get200_response_from_dict = UsersGet200Response.from_dict(users_get200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



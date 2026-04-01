# ApiTokenCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | [**IdentityReference**](IdentityReference.md) | Reference to a user or group. | [optional] 
**description** | **str** | Description of what the API token is used for. | [optional] [default to '']
**expires_in** | **int** | Expiration of the token in seconds. | [optional] 
**refresh_expires_in** | **int** | Expiration of the refresh token in seconds. | [optional] 
**scope** | **str** | Permission scope of the token. | [optional] 

## Example

```python
from saturn_api.models.api_token_create import ApiTokenCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ApiTokenCreate from a JSON string
api_token_create_instance = ApiTokenCreate.from_json(json)
# print the JSON string representation of the object
print(ApiTokenCreate.to_json())

# convert the object into a dict
api_token_create_dict = api_token_create_instance.to_dict()
# create an instance of ApiTokenCreate from a dict
api_token_create_from_dict = ApiTokenCreate.from_dict(api_token_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



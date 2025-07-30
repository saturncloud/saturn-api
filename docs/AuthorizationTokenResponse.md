# AuthorizationTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | 
**refresh_token** | **str** |  | 
**token_type** | **str** |  | 
**expires_at** | **datetime** |  | 
**refresh_expires_at** | **datetime** |  | 
**expires_in** | **int** |  | 
**refresh_expires_in** | **int** |  | 

## Example

```python
from saturn_api.models.authorization_token_response import AuthorizationTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationTokenResponse from a JSON string
authorization_token_response_instance = AuthorizationTokenResponse.from_json(json)
# print the JSON string representation of the object
print(AuthorizationTokenResponse.to_json())

# convert the object into a dict
authorization_token_response_dict = authorization_token_response_instance.to_dict()
# create an instance of AuthorizationTokenResponse from a dict
authorization_token_response_from_dict = AuthorizationTokenResponse.from_dict(authorization_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# AuthorizationTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** | API access token. | 
**refresh_token** | **str** | API refresh token. | 
**token_type** | **str** | Type of the token. Only &#39;Bearer&#39; is supported. | 
**expires_at** | **datetime** | Token expiration timestamp. | 
**refresh_expires_at** | **datetime** | Refresh token expiration timestamp. | 
**expires_in** | **int** | Lifetime of the token in seconds. | 
**refresh_expires_in** | **int** | Lifetime of the refresh token in seconds. | 

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



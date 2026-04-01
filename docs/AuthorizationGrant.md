# AuthorizationGrant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **str** | Oauth grant type. | 
**code** | **str** | OAuth response code. | 
**code_verifier** | **str** | OAuth code verifier for the PKCE request. | 
**redirect_uri** | **str** | OAuth redirect URI. | 
**refresh_token** | **str** | Refresh token for retrieving a new token pair. | 

## Example

```python
from saturn_api.models.authorization_grant import AuthorizationGrant

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationGrant from a JSON string
authorization_grant_instance = AuthorizationGrant.from_json(json)
# print the JSON string representation of the object
print(AuthorizationGrant.to_json())

# convert the object into a dict
authorization_grant_dict = authorization_grant_instance.to_dict()
# create an instance of AuthorizationGrant from a dict
authorization_grant_from_dict = AuthorizationGrant.from_dict(authorization_grant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



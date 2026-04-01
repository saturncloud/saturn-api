# AuthorizationCodeGrant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **str** | OAuth grant type. | 
**code** | **str** | OAuth response code. | 
**code_verifier** | **str** | OAuth code verifier for the PKCE request. | 
**redirect_uri** | **str** | OAuth redirect URI. | 

## Example

```python
from saturn_api.models.authorization_code_grant import AuthorizationCodeGrant

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationCodeGrant from a JSON string
authorization_code_grant_instance = AuthorizationCodeGrant.from_json(json)
# print the JSON string representation of the object
print(AuthorizationCodeGrant.to_json())

# convert the object into a dict
authorization_code_grant_dict = authorization_code_grant_instance.to_dict()
# create an instance of AuthorizationCodeGrant from a dict
authorization_code_grant_from_dict = AuthorizationCodeGrant.from_dict(authorization_code_grant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



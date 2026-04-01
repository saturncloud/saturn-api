# AuthorizationRefreshGrant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **str** | Oauth grant type. | 
**refresh_token** | **str** | Refresh token for retrieving a new token pair. | 

## Example

```python
from saturn_api.models.authorization_refresh_grant import AuthorizationRefreshGrant

# TODO update the JSON string below
json = "{}"
# create an instance of AuthorizationRefreshGrant from a JSON string
authorization_refresh_grant_instance = AuthorizationRefreshGrant.from_json(json)
# print the JSON string representation of the object
print(AuthorizationRefreshGrant.to_json())

# convert the object into a dict
authorization_refresh_grant_dict = authorization_refresh_grant_instance.to_dict()
# create an instance of AuthorizationRefreshGrant from a dict
authorization_refresh_grant_from_dict = AuthorizationRefreshGrant.from_dict(authorization_refresh_grant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



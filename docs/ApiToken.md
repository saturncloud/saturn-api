# ApiToken


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the token. | [readonly] 
**description** | **str** | Description of what the API token is used for. | [readonly] 
**created_at** | **datetime** | Timestamp from when the token was created. | [readonly] 
**expires_at** | **datetime** | Token expiration timestamp. | [readonly] 
**refresh_expires_at** | **datetime** | Refresh token expiration timestamp. | [readonly] 
**scope** | **str** | Permission scope of the token. | [readonly] 
**user_id** | **str** | User ID associated with the token. | [readonly] 
**group_id** | **str** | Group ID associated with the token. | [readonly] 
**access_token** | **str** | API access token. | [readonly] 
**refresh_token** | **str** | API refresh token. | [optional] [readonly] 

## Example

```python
from saturn_api.models.api_token import ApiToken

# TODO update the JSON string below
json = "{}"
# create an instance of ApiToken from a JSON string
api_token_instance = ApiToken.from_json(json)
# print the JSON string representation of the object
print(ApiToken.to_json())

# convert the object into a dict
api_token_dict = api_token_instance.to_dict()
# create an instance of ApiToken from a dict
api_token_from_dict = ApiToken.from_dict(api_token_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



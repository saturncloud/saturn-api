# ApiTokenInfo


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

## Example

```python
from saturn_api.models.api_token_info import ApiTokenInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ApiTokenInfo from a JSON string
api_token_info_instance = ApiTokenInfo.from_json(json)
# print the JSON string representation of the object
print(ApiTokenInfo.to_json())

# convert the object into a dict
api_token_info_dict = api_token_info_instance.to_dict()
# create an instance of ApiTokenInfo from a dict
api_token_info_from_dict = ApiTokenInfo.from_dict(api_token_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ApiTokenUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** | Description of what the API token is used for. | 

## Example

```python
from saturn_api.models.api_token_update import ApiTokenUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ApiTokenUpdate from a JSON string
api_token_update_instance = ApiTokenUpdate.from_json(json)
# print the JSON string representation of the object
print(ApiTokenUpdate.to_json())

# convert the object into a dict
api_token_update_dict = api_token_update_instance.to_dict()
# create an instance of ApiTokenUpdate from a dict
api_token_update_from_dict = ApiTokenUpdate.from_dict(api_token_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



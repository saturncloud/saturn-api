# ResourceTokenInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the token. | 
**scope** | **str** | Permission scope of the token. | 

## Example

```python
from saturn_api.models.resource_token_info import ResourceTokenInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceTokenInfo from a JSON string
resource_token_info_instance = ResourceTokenInfo.from_json(json)
# print the JSON string representation of the object
print(ResourceTokenInfo.to_json())

# convert the object into a dict
resource_token_info_dict = resource_token_info_instance.to_dict()
# create an instance of ResourceTokenInfo from a dict
resource_token_info_from_dict = ResourceTokenInfo.from_dict(resource_token_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



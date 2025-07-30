# ResourceTokenUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scope** | **str** |  | 

## Example

```python
from saturn_api.models.resource_token_update import ResourceTokenUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceTokenUpdate from a JSON string
resource_token_update_instance = ResourceTokenUpdate.from_json(json)
# print the JSON string representation of the object
print(ResourceTokenUpdate.to_json())

# convert the object into a dict
resource_token_update_dict = resource_token_update_instance.to_dict()
# create an instance of ResourceTokenUpdate from a dict
resource_token_update_from_dict = ResourceTokenUpdate.from_dict(resource_token_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



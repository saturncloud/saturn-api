# ResourceHistory


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pods** | [**List[PodHistory]**](PodHistory.md) |  | [readonly] 

## Example

```python
from saturn_api.models.resource_history import ResourceHistory

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceHistory from a JSON string
resource_history_instance = ResourceHistory.from_json(json)
# print the JSON string representation of the object
print(ResourceHistory.to_json())

# convert the object into a dict
resource_history_dict = resource_history_instance.to_dict()
# create an instance of ResourceHistory from a dict
resource_history_from_dict = ResourceHistory.from_dict(resource_history_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



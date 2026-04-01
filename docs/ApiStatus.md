# ApiStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | API availability. | [readonly] 
**version** | **str** | API version. | [readonly] 

## Example

```python
from saturn_api.models.api_status import ApiStatus

# TODO update the JSON string below
json = "{}"
# create an instance of ApiStatus from a JSON string
api_status_instance = ApiStatus.from_json(json)
# print the JSON string representation of the object
print(ApiStatus.to_json())

# convert the object into a dict
api_status_dict = api_status_instance.to_dict()
# create an instance of ApiStatus from a dict
api_status_from_dict = ApiStatus.from_dict(api_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



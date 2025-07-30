# SaturnError


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | 
**error_code** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.saturn_error import SaturnError

# TODO update the JSON string below
json = "{}"
# create an instance of SaturnError from a JSON string
saturn_error_instance = SaturnError.from_json(json)
# print the JSON string representation of the object
print(SaturnError.to_json())

# convert the object into a dict
saturn_error_dict = saturn_error_instance.to_dict()
# create an instance of SaturnError from a dict
saturn_error_from_dict = SaturnError.from_dict(saturn_error_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# DataPoint


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datetime** | **str** |  | [readonly] 
**value** | **float** |  | [readonly] 

## Example

```python
from saturn_api.models.data_point import DataPoint

# TODO update the JSON string below
json = "{}"
# create an instance of DataPoint from a JSON string
data_point_instance = DataPoint.from_json(json)
# print the JSON string representation of the object
print(DataPoint.to_json())

# convert the object into a dict
data_point_dict = data_point_instance.to_dict()
# create an instance of DataPoint from a dict
data_point_from_dict = DataPoint.from_dict(data_point_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



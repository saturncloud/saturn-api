# Stats


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**avg** | **float** | Average value over the query range. | [readonly] 
**min** | **float** | Minimum value over the query range. | [readonly] 
**max** | **float** | Maximum value over the query range. | [readonly] 
**last** | **float** | Last seen value in the query range. | [readonly] 

## Example

```python
from saturn_api.models.stats import Stats

# TODO update the JSON string below
json = "{}"
# create an instance of Stats from a JSON string
stats_instance = Stats.from_json(json)
# print the JSON string representation of the object
print(Stats.to_json())

# convert the object into a dict
stats_dict = stats_instance.to_dict()
# create an instance of Stats from a dict
stats_from_dict = Stats.from_dict(stats_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



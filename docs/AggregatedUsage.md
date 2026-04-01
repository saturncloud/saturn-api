# AggregatedUsage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hours** | **float** | Compute hours used. | 
**dollars** | **float** | Dollars spent. | 

## Example

```python
from saturn_api.models.aggregated_usage import AggregatedUsage

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedUsage from a JSON string
aggregated_usage_instance = AggregatedUsage.from_json(json)
# print the JSON string representation of the object
print(AggregatedUsage.to_json())

# convert the object into a dict
aggregated_usage_dict = aggregated_usage_instance.to_dict()
# create an instance of AggregatedUsage from a dict
aggregated_usage_from_dict = AggregatedUsage.from_dict(aggregated_usage_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



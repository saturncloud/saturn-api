# MetricSeries


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pod_name** | **str** |  | [optional] 
**labels** | **Dict[str, str]** |  | [optional] 
**stats** | [**Stats**](Stats.md) |  | [optional] 
**data** | [**List[DataPoint]**](DataPoint.md) |  | [optional] 

## Example

```python
from saturn_api.models.metric_series import MetricSeries

# TODO update the JSON string below
json = "{}"
# create an instance of MetricSeries from a JSON string
metric_series_instance = MetricSeries.from_json(json)
# print the JSON string representation of the object
print(MetricSeries.to_json())

# convert the object into a dict
metric_series_dict = metric_series_instance.to_dict()
# create an instance of MetricSeries from a dict
metric_series_from_dict = MetricSeries.from_dict(metric_series_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



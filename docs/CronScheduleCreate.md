# CronScheduleCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schedule** | **str** |  | 
**concurrency_policy** | [**ConcurrencyPolicy**](ConcurrencyPolicy.md) |  | [optional] 
**backoff_limit** | **int** |  | [optional] [default to 0]

## Example

```python
from saturn_api.models.cron_schedule_create import CronScheduleCreate

# TODO update the JSON string below
json = "{}"
# create an instance of CronScheduleCreate from a JSON string
cron_schedule_create_instance = CronScheduleCreate.from_json(json)
# print the JSON string representation of the object
print(CronScheduleCreate.to_json())

# convert the object into a dict
cron_schedule_create_dict = cron_schedule_create_instance.to_dict()
# create an instance of CronScheduleCreate from a dict
cron_schedule_create_from_dict = CronScheduleCreate.from_dict(cron_schedule_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



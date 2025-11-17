# CronScheduleUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schedule** | **str** |  | [optional] 
**concurrency_policy** | [**ConcurrencyPolicy**](ConcurrencyPolicy.md) |  | [optional] 
**backoff_limit** | **int** |  | [optional] 

## Example

```python
from saturn_api.models.cron_schedule_update import CronScheduleUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of CronScheduleUpdate from a JSON string
cron_schedule_update_instance = CronScheduleUpdate.from_json(json)
# print the JSON string representation of the object
print(CronScheduleUpdate.to_json())

# convert the object into a dict
cron_schedule_update_dict = cron_schedule_update_instance.to_dict()
# create an instance of CronScheduleUpdate from a dict
cron_schedule_update_from_dict = CronScheduleUpdate.from_dict(cron_schedule_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# CronSchedule


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schedule** | **str** | Cron schedule for triggering the job. | [readonly] 
**concurrency_policy** | **str** | Specifies how to treat concurrent executions of a job&#39;s cron schedule. | [readonly] 

## Example

```python
from saturn_api.models.cron_schedule import CronSchedule

# TODO update the JSON string below
json = "{}"
# create an instance of CronSchedule from a JSON string
cron_schedule_instance = CronSchedule.from_json(json)
# print the JSON string representation of the object
print(CronSchedule.to_json())

# convert the object into a dict
cron_schedule_dict = cron_schedule_instance.to_dict()
# create an instance of CronSchedule from a dict
cron_schedule_from_dict = CronSchedule.from_dict(cron_schedule_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# CronSchedule


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**schedule** | **str** |  | [readonly] 
**concurrency_policy** | **str** |  | [readonly] 
**backoff_limit** | **int** |  | [readonly] 

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



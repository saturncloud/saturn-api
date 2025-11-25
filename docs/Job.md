# Job


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**command** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**image_tag** | [**ResourceImageTag**](ResourceImageTag.md) |  | [readonly] 
**instance_size** | **str** |  | [readonly] 
**size_display** | **str** |  | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [readonly] 
**cron_schedule_options** | [**CronSchedule**](CronSchedule.md) |  | [optional] [readonly] 
**start_script** | **str** |  | [optional] [readonly] 
**environment_variables** | **Dict[str, str]** |  | [readonly] 
**working_dir** | **str** |  | [readonly] 
**is_spot** | **bool** |  | [readonly] 
**start_dind** | **bool** |  | [readonly] 
**scale** | **int** |  | [readonly] 
**k8s_name** | **str** |  | [readonly] 
**require_restart** | **bool** |  | [readonly] 
**resource_type** | [**ResourceType**](ResourceType.md) |  | 
**created_at** | **str** |  | [readonly] 
**updated_at** | **str** |  | [readonly] 
**last_deploy** | **str** |  | [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) |  | [optional] [readonly] 
**status** | **str** |  | [readonly] 
**running_count** | **int** |  | [readonly] 
**debug_mode** | **bool** |  | [readonly] 
**scheduled** | **bool** |  | [readonly] 

## Example

```python
from saturn_api.models.job import Job

# TODO update the JSON string below
json = "{}"
# create an instance of Job from a JSON string
job_instance = Job.from_json(json)
# print the JSON string representation of the object
print(Job.to_json())

# convert the object into a dict
job_dict = job_instance.to_dict()
# create an instance of Job from a dict
job_from_dict = Job.from_dict(job_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



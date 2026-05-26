# Job


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the job. | [readonly] 
**name** | **str** | Name of the job. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the job. | [readonly] 
**command** | **str** | Command that runs on start. | [readonly] 
**description** | **str** | Description of the job. | [readonly] 
**tags** | **Dict[str, str]** | Descriptive tags for the job. | [optional] 
**instance_size** | **str** | Instance size of the job. | [readonly] 
**image_tag** | [**ImageTag**](ImageTag.md) | Image tag that is attached to the job. | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [readonly] 
**cron_schedule_options** | [**CronSchedule**](CronSchedule.md) | Cron schedule configuration for scheduled jobs. | [optional] [readonly] 
**start_script** | **str** | Shell script that runs on start before the primary command. | [optional] [readonly] 
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [readonly] 
**working_dir** | **str** | Initial working directory. | [readonly] 
**is_spot** | **bool** | Enables running on spot instance sizes. | [readonly] 
**start_dind** | **bool** | Enables docker-in-docker. | [readonly] 
**scale** | **int** | Number of pod replicas. | [readonly] 
**retries** | **int** | Maximum number of retries for a failed job. | [readonly] 
**k8s_name** | **str** | Unique name for associated kubernetes objects. | [readonly] 
**require_restart** | **bool** | True if an update was applied that requires restart to take effect. | [readonly] 
**resource_type** | **str** | Resource type of the job. | [readonly] 
**size_display** | **str** | Description of the instance size. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**updated_at** | **str** | Update timestamp. | [readonly] 
**last_deploy** | **str** | Last started timestamp. | [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) | Dask cluster attached to the job. | [optional] [readonly] 
**status** | **str** | Current status of the job. | [readonly] 
**running_count** | **int** | Number of running pods. | [readonly] 
**debug_mode** | **bool** | True if job is running in debug mode. | [readonly] 
**scheduled** | **bool** | True if job is currently scheduled. | [readonly] 

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



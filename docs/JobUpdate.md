# JobUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the job. | [optional] 
**description** | **str** | Description of the job. | [optional] 
**tags** | **Dict[str, str]** | Descriptive tags for the job. | [optional] 
**image_uri** | **str** | URI of the image to attach. | [optional] 
**image_tag_id** | **str** | Image tag ID to attach. | [optional] 
**image_enforce_trusted** | **bool** | Enable image trust validation before attaching. | [optional] [default to True]
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) | List of external repo attachments. | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [optional] 
**start_script** | **str** | Shell script that runs on start before the primary command. | [optional] 
**working_dir** | **str** | Initial working directory. | [optional] 
**instance_size** | **str** | Instance size of the job. | [optional] 
**is_spot** | **bool** | Enables running on spot instance sizes. | [optional] 
**start_dind** | **bool** | Enables docker-in-docker. | [optional] 
**command** | **str** | Command that runs on start. | [optional] 
**scale** | **int** | Number of pod replicas. | [optional] 
**retries** | **int** | Maximum number of retries for a failed job. | [optional] 
**cron_schedule_options** | [**CronScheduleUpdate**](CronScheduleUpdate.md) | Cron schedule configuration for scheduled jobs. | [optional] 

## Example

```python
from saturn_api.models.job_update import JobUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of JobUpdate from a JSON string
job_update_instance = JobUpdate.from_json(json)
# print the JSON string representation of the object
print(JobUpdate.to_json())

# convert the object into a dict
job_update_dict = job_update_instance.to_dict()
# create an instance of JobUpdate from a dict
job_update_from_dict = JobUpdate.from_dict(job_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



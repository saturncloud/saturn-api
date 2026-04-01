# JobCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the job. | 
**owner** | [**OwnerReference**](OwnerReference.md) | Owner of the job. | [optional] 
**description** | **str** | Description of the job. | [optional] [default to '']
**tags** | **Dict[str, str]** | Descriptive tags for the job. | [optional] 
**instance_size** | **str** | Instance size of the job. | [optional] 
**image_uri** | **str** | URI of the image to attach. | [optional] 
**image_tag_id** | **str** | Image tag ID to attach. | [optional] 
**image_enforce_trusted** | **bool** | Enable image trust validation before attaching. | [optional] [default to True]
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) | List of external repo attachments for the job. | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [optional] 
**start_script** | **str** | Shell script to run on start before the primary command. | [optional] 
**working_dir** | **str** | Initial working directory for the job. | [optional] [default to '/home/jovyan/workspace']
**is_spot** | **bool** | Enables running on spot instance sizes. | [optional] [default to False]
**start_dind** | **bool** | Enables docker-in-docker. | [optional] [default to False]
**command** | **str** | Command that runs on start. | 
**scale** | **int** | Number of pod replicas. | [optional] [default to 1]
**cron_schedule_options** | [**CronScheduleCreate**](CronScheduleCreate.md) | Cron schedule configuration for scheduled jobs. | [optional] 

## Example

```python
from saturn_api.models.job_create import JobCreate

# TODO update the JSON string below
json = "{}"
# create an instance of JobCreate from a JSON string
job_create_instance = JobCreate.from_json(json)
# print the JSON string representation of the object
print(JobCreate.to_json())

# convert the object into a dict
job_create_dict = job_create_instance.to_dict()
# create an instance of JobCreate from a dict
job_create_from_dict = JobCreate.from_dict(job_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



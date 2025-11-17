# JobCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**description** | **str** |  | [optional] [default to '']
**tags** | **Dict[str, str]** |  | [optional] 
**instance_size** | **str** |  | [optional] 
**image_uri** | **str** |  | [optional] 
**image_tag_id** | **str** |  | [optional] 
**image_enforce_trusted** | **bool** |  | [optional] [default to True]
**environment_variables** | **Dict[str, str]** |  | [optional] 
**external_repo_attachments** | [**List[ExternalRepoAttachmentNested]**](ExternalRepoAttachmentNested.md) |  | [optional] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [optional] 
**start_script** | **str** |  | [optional] 
**working_dir** | **str** |  | [optional] [default to '/home/jovyan/workspace']
**is_spot** | **bool** |  | [optional] [default to False]
**start_dind** | **bool** |  | [optional] [default to False]
**command** | **str** |  | 
**scale** | **int** |  | [optional] [default to 1]
**cron_schedule_options** | [**CronScheduleCreate**](CronScheduleCreate.md) |  | [optional] 

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



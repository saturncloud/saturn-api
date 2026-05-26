# Resource


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the workspace | [readonly] 
**name** | **str** | Name of the workspace. | [readonly] 
**resource_type** | **str** | Resource type of the workspace. | [readonly] 
**tags** | **Dict[str, str]** | Descriptive tags for the workspace. | 
**worker_size** | **str** | Instance size of the dask workers. | [readonly] 
**worker_size_display** | **str** | Description of the instance size for the workers. | [readonly] 
**worker_is_spot** | **bool** | Enables spot instances for the dask workers. | [readonly] 
**scheduler_size** | **str** | Instance size of the dask scheduler. | [readonly] 
**scheduler_size_display** | **str** | Description of the instance size for the scheduler. | [readonly] 
**n_workers** | **int** | Number of dask workers. | [readonly] 
**nprocs** | **int** | Number of processes per worker. | [readonly] 
**nthreads** | **int** | Number of threads per process. | [readonly] 
**scheduler_url** | **str** | Internal address for the dask scheduler | [readonly] 
**subdomain** | **str** | Subdomain for the workspace URL. | [readonly] 
**image** | **str** | Image for the dask cluster and resource it is attached to. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**status** | **str** | Current status of the workspace. | [readonly] 
**warnings** | **List[str]** | Messages with warnings about the state of the dask cluster. | [optional] 
**errors** | **List[str]** | Messages with errors about the state of the dask cluster. | [optional] 
**url** | **str** | External URL for the workspace. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the workspace. | [readonly] 
**deployment_id** | **str** | Deployment ID the dask cluster is attached to. | [optional] [readonly] 
**job_id** | **str** | Job ID the dask cluster is attached to. | [optional] [readonly] 
**workspace_id** | **str** | Workspace ID the dask cluster is attached to. | [optional] [readonly] 
**command** | **str** | Command that runs on start. | [readonly] 
**description** | **str** | Description of the workspace. | [readonly] 
**instance_size** | **str** | Instance size of the workspace. | [readonly] 
**image_tag** | [**ImageTag**](ImageTag.md) | Image tag that is attached to the workspace. | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) | Addtitional packages to install on start. | [readonly] 
**scale** | **int** | Number of pod replicas. | [readonly] 
**start_script** | **str** | Shell script that runs on start before the primary command. | [readonly] 
**environment_variables** | **Dict[str, str]** | Mapping of environment variable keys to values. | [readonly] 
**working_dir** | **str** | Initial working directory. | [readonly] 
**start_ssh** | **bool** | Enable SSH access on the workspace. | [readonly] 
**is_spot** | **bool** | Enables running on spot instance sizes. | [readonly] 
**healthcheck** | **str** | Healthcheck path on the deployment&#39;s primary port. | [optional] [readonly] 
**start_dind** | **bool** | Enables docker-in-docker. | [readonly] 
**last_deploy** | **str** | Last started timestamp. | [readonly] 
**k8s_name** | **str** | Unique name for associated kubernetes objects. | [readonly] 
**updated_at** | **str** | Updated timestamp. | [readonly] 
**require_restart** | **bool** | True if an update was applied that requires restart to take effect | [readonly] 
**size_display** | **str** | Description of the instance size. | [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) | Dask cluster attached to the  workspace. | [optional] [readonly] 
**running_count** | **int** | Number of running pods. | [readonly] 
**debug_mode** | **bool** | True if workspace is running in debug mode. | [readonly] 
**ssh_url** | **str** | External SSH URL for the workspace. | [readonly] 
**cron_schedule_options** | [**CronSchedule**](CronSchedule.md) | Cron schedule configuration for scheduled jobs. | [optional] [readonly] 
**retries** | **int** | Maximum number of retries for a failed job. | [readonly] 
**scheduled** | **bool** | True if job is currently scheduled. | [readonly] 
**ide** | **str** | IDE of the workspace | [readonly] 
**disk_space** | **str** | Size of the persistent volume attached to the workspace. | [readonly] 
**auto_shutoff** | **str** | Duration of inactivity before workspace is automatically stopped. | [readonly] 
**started_at** | **str** | Last started timestamp. | [readonly] 
**self_destruct** | **bool** | Auto delete the workspace on stop. | [optional] [readonly] 

## Example

```python
from saturn_api.models.resource import Resource

# TODO update the JSON string below
json = "{}"
# create an instance of Resource from a JSON string
resource_instance = Resource.from_json(json)
# print the JSON string representation of the object
print(Resource.to_json())

# convert the object into a dict
resource_dict = resource_instance.to_dict()
# create an instance of Resource from a dict
resource_from_dict = Resource.from_dict(resource_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# Resource


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**resource_type** | [**ResourceType**](ResourceType.md) |  | 
**tags** | **Dict[str, str]** |  | 
**worker_size** | **str** |  | [readonly] 
**worker_size_display** | **str** |  | [readonly] 
**worker_is_spot** | **bool** |  | [readonly] 
**scheduler_size** | **str** |  | [readonly] 
**scheduler_size_display** | **str** |  | [readonly] 
**n_workers** | **int** |  | [readonly] 
**nprocs** | **int** |  | [readonly] 
**nthreads** | **int** |  | [readonly] 
**scheduler_url** | **str** |  | [readonly] 
**subdomain** | **str** |  | [readonly] 
**image** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**status** | **str** |  | [readonly] 
**warnings** | **List[str]** |  | [optional] 
**errors** | **List[str]** |  | [optional] 
**url** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**deployment_id** | **str** |  | [optional] [readonly] 
**job_id** | **str** |  | [optional] [readonly] 
**workspace_id** | **str** |  | [optional] [readonly] 
**command** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**instance_size** | **str** |  | [readonly] 
**extra_packages** | [**ExtraPackages**](ExtraPackages.md) |  | [readonly] 
**scale** | **int** |  | [readonly] 
**start_script** | **str** |  | [readonly] 
**environment_variables** | **Dict[str, str]** |  | [readonly] 
**working_dir** | **str** |  | [readonly] 
**start_ssh** | **bool** |  | [readonly] 
**is_spot** | **bool** |  | [readonly] 
**healthcheck** | **str** |  | [optional] [readonly] 
**start_dind** | **bool** |  | [readonly] 
**image_tag** | [**ResourceImageTag**](ResourceImageTag.md) |  | [readonly] 
**last_deploy** | **str** |  | [readonly] 
**k8s_name** | **str** |  | [readonly] 
**updated_at** | **str** |  | [readonly] 
**require_restart** | **bool** |  | [readonly] 
**size_display** | **str** |  | [readonly] 
**dask_cluster** | [**DaskClusterNested**](DaskClusterNested.md) |  | [optional] [readonly] 
**running_count** | **int** |  | [readonly] 
**debug_mode** | **bool** |  | [readonly] 
**ssh_url** | **str** |  | [readonly] 
**cron_schedule_options** | [**CronSchedule**](CronSchedule.md) |  | [optional] [readonly] 
**scheduled** | **bool** |  | [readonly] 
**ide** | **str** |  | [readonly] 
**disk_space** | **str** |  | [readonly] 
**auto_shutoff** | **str** |  | [readonly] 
**started_at** | **str** |  | [readonly] 
**self_destruct** | **bool** |  | [optional] [readonly] 

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



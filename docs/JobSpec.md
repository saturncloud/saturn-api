# JobSpec


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**owner** | [**OwnerReference**](OwnerReference.md) |  | [optional] 
**description** | **str** |  | [optional] 
**tags** | **Dict[str, str]** |  | [optional] 
**image** | [**ImageTagReference**](ImageTagReference.md) |  | 
**instance_type** | **str** |  | 
**environment_variables** | **Dict[str, str]** |  | [optional] 
**working_directory** | **str** |  | [optional] 
**extra_packages** | [**ExtraPackagesRecipe**](ExtraPackagesRecipe.md) |  | [optional] 
**config_files** | [**Dict[str, ConfigFileEntry]**](ConfigFileEntry.md) |  | [optional] 
**start_script** | **str** |  | [optional] 
**token_scope** | **str** |  | [optional] 
**dask_cluster** | [**DaskClusterAttachment**](DaskClusterAttachment.md) |  | [optional] 
**git_repositories** | [**List[ExternalRepoAttachmentRecipe]**](ExternalRepoAttachmentRecipe.md) |  | [optional] 
**secrets** | [**List[SecretAttachmentRecipe]**](SecretAttachmentRecipe.md) |  | [optional] 
**shared_folders** | [**List[SharedFolderAttachmentRecipe]**](SharedFolderAttachmentRecipe.md) |  | [optional] 
**start_dind** | **bool** |  | [optional] 
**status** | **str** |  | [optional] 
**command** | **str** |  | 
**scale** | **int** |  | [optional] [default to 1]
**use_spot_instance** | **bool** |  | [optional] [default to False]
**schedule** | **str** |  | [optional] 
**concurrency_policy** | **str** |  | [optional] 
**retries** | **int** |  | [optional] 

## Example

```python
from saturn_api.models.job_spec import JobSpec

# TODO update the JSON string below
json = "{}"
# create an instance of JobSpec from a JSON string
job_spec_instance = JobSpec.from_json(json)
# print the JSON string representation of the object
print(JobSpec.to_json())

# convert the object into a dict
job_spec_dict = job_spec_instance.to_dict()
# create an instance of JobSpec from a dict
job_spec_from_dict = JobSpec.from_dict(job_spec_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



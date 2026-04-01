# JobServerInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**ServerOptionsSize**](ServerOptionsSize.md) | Configuration options for jobs. | 
**default_images** | [**DefaultImages**](DefaultImages.md) | Default images for jobs. | 
**default_sizes** | [**DefaultSizes**](DefaultSizes.md) | Default instance sizes for jobs. | 

## Example

```python
from saturn_api.models.job_server_info import JobServerInfo

# TODO update the JSON string below
json = "{}"
# create an instance of JobServerInfo from a JSON string
job_server_info_instance = JobServerInfo.from_json(json)
# print the JSON string representation of the object
print(JobServerInfo.to_json())

# convert the object into a dict
job_server_info_dict = job_server_info_instance.to_dict()
# create an instance of JobServerInfo from a dict
job_server_info_from_dict = JobServerInfo.from_dict(job_server_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



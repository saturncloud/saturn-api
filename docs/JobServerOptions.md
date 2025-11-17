# JobServerOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**server_options** | [**ServerOptionsSize**](ServerOptionsSize.md) |  | 
**default_images** | [**DefaultImages**](DefaultImages.md) |  | 
**default_sizes** | [**DefaultSizes**](DefaultSizes.md) |  | 

## Example

```python
from saturn_api.models.job_server_options import JobServerOptions

# TODO update the JSON string below
json = "{}"
# create an instance of JobServerOptions from a JSON string
job_server_options_instance = JobServerOptions.from_json(json)
# print the JSON string representation of the object
print(JobServerOptions.to_json())

# convert the object into a dict
job_server_options_dict = job_server_options_instance.to_dict()
# create an instance of JobServerOptions from a dict
job_server_options_from_dict = JobServerOptions.from_dict(job_server_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# JobStart


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**debug_mode** | **bool** | Enable debug mode. Job will continue to run on error, and SSH will be enabled. | [optional] 

## Example

```python
from saturn_api.models.job_start import JobStart

# TODO update the JSON string below
json = "{}"
# create an instance of JobStart from a JSON string
job_start_instance = JobStart.from_json(json)
# print the JSON string representation of the object
print(JobStart.to_json())

# convert the object into a dict
job_start_dict = job_start_instance.to_dict()
# create an instance of JobStart from a dict
job_start_from_dict = JobStart.from_dict(job_start_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



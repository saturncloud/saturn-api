# FineTuneJobList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**jobs** | [**List[FineTuneJobView]**](FineTuneJobView.md) | List of fine-tuning jobs (FineTuneJobView projections). | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.fine_tune_job_list import FineTuneJobList

# TODO update the JSON string below
json = "{}"
# create an instance of FineTuneJobList from a JSON string
fine_tune_job_list_instance = FineTuneJobList.from_json(json)
# print the JSON string representation of the object
print(FineTuneJobList.to_json())

# convert the object into a dict
fine_tune_job_list_dict = fine_tune_job_list_instance.to_dict()
# create an instance of FineTuneJobList from a dict
fine_tune_job_list_from_dict = FineTuneJobList.from_dict(fine_tune_job_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



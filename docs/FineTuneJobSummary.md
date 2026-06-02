# FineTuneJobSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Fine-tune job ID (same as the underlying deployment ID). | [readonly] 
**name** | **str** |  | [readonly] 
**status** | **str** | Underlying Saturn job status: pending, running, stopping, stopped, completed, or error. Same vocabulary as the rest of the platform — TF intentionally does not translate to a product-specific set. | [readonly] 
**created_at** | **str** |  | [readonly] 
**started_at** | **str** |  | [readonly] 
**finished_at** | **str** |  | [readonly] 
**base_model** | **str** |  | [readonly] 
**hyperparameters** | [**Hyperparameters**](Hyperparameters.md) |  | [readonly] 

## Example

```python
from saturn_api.models.fine_tune_job_summary import FineTuneJobSummary

# TODO update the JSON string below
json = "{}"
# create an instance of FineTuneJobSummary from a JSON string
fine_tune_job_summary_instance = FineTuneJobSummary.from_json(json)
# print the JSON string representation of the object
print(FineTuneJobSummary.to_json())

# convert the object into a dict
fine_tune_job_summary_dict = fine_tune_job_summary_instance.to_dict()
# create an instance of FineTuneJobSummary from a dict
fine_tune_job_summary_from_dict = FineTuneJobSummary.from_dict(fine_tune_job_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



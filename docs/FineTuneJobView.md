# FineTuneJobView


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
**dataset_id** | **str** |  | [readonly] 
**output_location** | **str** | Structured location of the job&#39;s RW output folder: sf:&lt;tf-jobs-folder-id&gt;/jobs/&lt;job-id&gt;/. | [readonly] 
**checkpoint** | **object** | Resolved checkpoint artifact (kind&#x3D;checkpoint). Populated by the future checkpoint-registration PR; null until then. | [readonly] 

## Example

```python
from saturn_api.models.fine_tune_job_view import FineTuneJobView

# TODO update the JSON string below
json = "{}"
# create an instance of FineTuneJobView from a JSON string
fine_tune_job_view_instance = FineTuneJobView.from_json(json)
# print the JSON string representation of the object
print(FineTuneJobView.to_json())

# convert the object into a dict
fine_tune_job_view_dict = fine_tune_job_view_instance.to_dict()
# create an instance of FineTuneJobView from a dict
fine_tune_job_view_from_dict = FineTuneJobView.from_dict(fine_tune_job_view_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



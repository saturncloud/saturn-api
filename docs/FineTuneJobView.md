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
**output_location** | **str** | Structured location of the job&#39;s RW output folder: sf:&lt;tf-jobs-folder-id&gt;/&lt;job-id&gt;/. | [readonly] 
**latest_checkpoint** | [**Artifact**](Artifact.md) | Most recently-registered usable (&#x60;&#x60;status&#x3D;ready&#x60;&#x60;) checkpoint artifact (kind&#x3D;checkpoint) whose &#x60;&#x60;producer.id&#x60;&#x60; matches this job&#39;s deployment id. Null if no ready checkpoint exists — the job may still be running, may have failed, or may have registered an error artifact (&#x60;&#x60;status&#x3D;error&#x60;&#x60;) which is deliberately NOT surfaced here. To diagnose failures, read the job&#39;s training logs; the shim tees axolotl output to &#x60;&#x60;&lt;output_dir&gt;/training.log&#x60;&#x60;. Named &#x60;&#x60;latest_checkpoint&#x60;&#x60; rather than &#x60;&#x60;checkpoint&#x60;&#x60; to leave room for future API surface exposing intermediate per-epoch checkpoints (axolotl writes &#x60;&#x60;checkpoint-N/&#x60;&#x60; subdirs to NFS during training, but those are not registered as separate Artifact rows today). Only returned by the single-GET endpoint; list responses use &#x60;&#x60;FineTuneJobSummary&#x60;&#x60; which omits this field. | [readonly] 

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



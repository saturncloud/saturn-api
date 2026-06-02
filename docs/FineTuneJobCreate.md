# FineTuneJobCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Human-readable name for the fine-tuning job. | 
**dataset_id** | **str** | Identifier of a token-factory dataset artifact. The dataset must have status&#x3D;READY and belong to the same org as the requester. | 
**hyperparameters** | [**Hyperparameters1**](Hyperparameters1.md) | Training hyperparameters. | 
**instance_size** | **str** | Saturn instance size to run the training pod on. Must be a GPU-equipped size (gpu &gt; 0). | 
**base_model** | **str** | Base model to fine-tune a fresh adapter from. Must be one of the platform&#39;s supported models (see SUPPORTED_MODELS allow-list). Provide EITHER this OR &#x60;&#x60;source_checkpoint_artifact_id&#x60;&#x60; (exactly one). Omit when continuing from a checkpoint — the base_model is then derived from the checkpoint&#39;s metadata. | [optional] 
**source_checkpoint_artifact_id** | **str** | Artifact id of an existing checkpoint to continue-train. Must be a &#x60;&#x60;kind&#x3D;checkpoint&#x60;&#x60; Artifact with &#x60;&#x60;status&#x3D;ready&#x60;&#x60; belonging to the same org as the requester. When set, training continues the SAME LoRA adapter on the new dataset (weight-init continuation), and &#x60;&#x60;base_model&#x60;&#x60; is derived from the checkpoint&#39;s metadata. Provide EITHER this OR &#x60;&#x60;base_model&#x60;&#x60; (exactly one). | [optional] 

## Example

```python
from saturn_api.models.fine_tune_job_create import FineTuneJobCreate

# TODO update the JSON string below
json = "{}"
# create an instance of FineTuneJobCreate from a JSON string
fine_tune_job_create_instance = FineTuneJobCreate.from_json(json)
# print the JSON string representation of the object
print(FineTuneJobCreate.to_json())

# convert the object into a dict
fine_tune_job_create_dict = fine_tune_job_create_instance.to_dict()
# create an instance of FineTuneJobCreate from a dict
fine_tune_job_create_from_dict = FineTuneJobCreate.from_dict(fine_tune_job_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



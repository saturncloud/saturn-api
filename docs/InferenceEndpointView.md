# InferenceEndpointView


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Inference endpoint ID (same as the underlying deployment ID). | [readonly] 
**name** | **str** |  | [readonly] 
**status** | **str** | Underlying Saturn deployment status: pending, running, stopping, stopped, or error. | [readonly] 
**created_at** | **str** |  | [readonly] 
**base_model** | **str** | HuggingFace base model id derived from the checkpoint Artifact&#39;s &#x60;&#x60;metadata.base_model&#x60;&#x60; at create time. | [readonly] 
**checkpoint_artifact_id** | **str** | Artifact id of the checkpoint this endpoint is serving. | [readonly] 
**instance_size** | **str** |  | [readonly] 
**endpoint_url** | **str** | Public URL clients POST OpenAI-compatible inference requests to. Uses the deployment&#39;s auto-generated subdomain. Returns the URL regardless of running state — clients can stash it; calls fail while the endpoint is stopped. | [readonly] 
**checkpoint** | [**Artifact**](Artifact.md) | Resolved checkpoint Artifact. Null only if the artifact was deleted out from under the endpoint (we block that path; the field is nullable defensively). | [readonly] 

## Example

```python
from saturn_api.models.inference_endpoint_view import InferenceEndpointView

# TODO update the JSON string below
json = "{}"
# create an instance of InferenceEndpointView from a JSON string
inference_endpoint_view_instance = InferenceEndpointView.from_json(json)
# print the JSON string representation of the object
print(InferenceEndpointView.to_json())

# convert the object into a dict
inference_endpoint_view_dict = inference_endpoint_view_instance.to_dict()
# create an instance of InferenceEndpointView from a dict
inference_endpoint_view_from_dict = InferenceEndpointView.from_dict(inference_endpoint_view_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



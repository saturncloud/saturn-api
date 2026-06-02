# InferenceEndpointCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Human-readable name for the inference endpoint. | 
**checkpoint_artifact_id** | **str** | Artifact id of the checkpoint to serve. Must be a &#x60;&#x60;kind&#x3D;checkpoint&#x60;&#x60; Artifact with &#x60;&#x60;status&#x3D;ready&#x60;&#x60; belonging to the same org as the requester. | 
**instance_size** | **str** | Saturn instance size to run the inference pod on. Must be a GPU-equipped size (gpu &gt; 0). | 
**quantization** | **str** | Optional vLLM quantization method. Restricted to calibration-free methods (&#x60;&#x60;fp8&#x60;&#x60;, &#x60;&#x60;int8&#x60;&#x60;) — these quantize on the fly with no calibration dataset. Calibration-requiring methods (gptq, awq) are rejected. Omit (the default) to serve in the checkpoint&#39;s native precision (BF16). | [optional] 
**visibility** | **str** | Route visibility enforced by ForwardAuth: &#x60;&#x60;org&#x60;&#x60; (any member of the endpoint&#39;s org may call it) or &#x60;&#x60;owner&#x60;&#x60; (only the owning identity and explicit &#x60;&#x60;viewers&#x60;&#x60;). Defaults to &#x60;&#x60;org&#x60;&#x60;. | [optional] [default to 'org']
**viewers** | **List[str]** | Optional list of identity names (usernames or group names in the endpoint&#39;s org) granted access to the endpoint route in addition to the owner. Honored by ForwardAuth exactly like a normal deployment&#39;s viewers. | [optional] 

## Example

```python
from saturn_api.models.inference_endpoint_create import InferenceEndpointCreate

# TODO update the JSON string below
json = "{}"
# create an instance of InferenceEndpointCreate from a JSON string
inference_endpoint_create_instance = InferenceEndpointCreate.from_json(json)
# print the JSON string representation of the object
print(InferenceEndpointCreate.to_json())

# convert the object into a dict
inference_endpoint_create_dict = inference_endpoint_create_instance.to_dict()
# create an instance of InferenceEndpointCreate from a dict
inference_endpoint_create_from_dict = InferenceEndpointCreate.from_dict(inference_endpoint_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



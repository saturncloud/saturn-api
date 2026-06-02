# InferenceEndpointList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoints** | [**List[InferenceEndpointSummary]**](InferenceEndpointSummary.md) | List of inference endpoints (&#x60;&#x60;InferenceEndpointSummary&#x60;&#x60; projections — without &#x60;&#x60;checkpoint&#x60;&#x60;; fetch the by-id endpoint for that). | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.inference_endpoint_list import InferenceEndpointList

# TODO update the JSON string below
json = "{}"
# create an instance of InferenceEndpointList from a JSON string
inference_endpoint_list_instance = InferenceEndpointList.from_json(json)
# print the JSON string representation of the object
print(InferenceEndpointList.to_json())

# convert the object into a dict
inference_endpoint_list_dict = inference_endpoint_list_instance.to_dict()
# create an instance of InferenceEndpointList from a dict
inference_endpoint_list_from_dict = InferenceEndpointList.from_dict(inference_endpoint_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



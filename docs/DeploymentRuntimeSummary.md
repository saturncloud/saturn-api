# DeploymentRuntimeSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**namespace** | **str** |  | 
**uid** | **str** |  | 
**controller_uid** | **str** |  | [optional] 
**controller_kind** | **str** |  | [optional] 
**labels** | **Dict[str, str]** |  | [optional] 
**annotations** | **Dict[str, str]** |  | [optional] 
**conditions** | [**List[Condition]**](Condition.md) |  | [optional] 
**started_at** | **datetime** |  | [optional] 
**deleted_at** | **datetime** |  | [optional] 
**status** | **str** |  | [optional] [default to 'stopped']
**scale** | **int** |  | [optional] [default to 0]
**running_count** | **int** |  | [optional] [default to 0]
**active_count** | **int** |  | [optional] [default to 0]
**pod_summaries** | [**List[PodRuntimeSummary]**](PodRuntimeSummary.md) |  | [optional] 
**pod_annotations** | **Dict[str, str]** |  | [optional] 

## Example

```python
from saturn_api.models.deployment_runtime_summary import DeploymentRuntimeSummary

# TODO update the JSON string below
json = "{}"
# create an instance of DeploymentRuntimeSummary from a JSON string
deployment_runtime_summary_instance = DeploymentRuntimeSummary.from_json(json)
# print the JSON string representation of the object
print(DeploymentRuntimeSummary.to_json())

# convert the object into a dict
deployment_runtime_summary_dict = deployment_runtime_summary_instance.to_dict()
# create an instance of DeploymentRuntimeSummary from a dict
deployment_runtime_summary_from_dict = DeploymentRuntimeSummary.from_dict(deployment_runtime_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



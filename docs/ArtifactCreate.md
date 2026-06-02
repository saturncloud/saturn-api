# ArtifactCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Human-readable name for the artifact. | 
**kind** | [**ArtifactKind**](ArtifactKind.md) |  | [optional] 
**location** | **str** | Storage location (NFS path or object storage URI). | 
**status** | [**ArtifactStatus**](ArtifactStatus.md) |  | [optional] 
**producer** | **Dict[str, object]** | JSONB snapshot of the Saturn resource that produced this artifact. Shape: {id, kind, name}. Null if uploaded directly. | [optional] 
**metadata** | **Dict[str, object]** | Arbitrary metadata blob: schema_type, row_count, base_model, epoch, metrics, etc. | [optional] 

## Example

```python
from saturn_api.models.artifact_create import ArtifactCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactCreate from a JSON string
artifact_create_instance = ArtifactCreate.from_json(json)
# print the JSON string representation of the object
print(ArtifactCreate.to_json())

# convert the object into a dict
artifact_create_dict = artifact_create_instance.to_dict()
# create an instance of ArtifactCreate from a dict
artifact_create_from_dict = ArtifactCreate.from_dict(artifact_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



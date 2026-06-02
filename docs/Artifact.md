# Artifact


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Artifact identifier. | [readonly] 
**org_id** | **str** | Owning organisation ID. | [readonly] 
**name** | **str** | Human-readable artifact name. | [readonly] 
**kind** | [**ArtifactKind**](ArtifactKind.md) |  | 
**location** | **str** | Storage location (NFS path or object storage URI). | [readonly] 
**producer** | **Dict[str, object]** | JSONB snapshot of the producer resource: {id, kind, name}. Null if artifact was uploaded directly. | [readonly] 
**metadata** | **Dict[str, object]** | Arbitrary metadata blob. | [readonly] 
**created_at** | **str** | Creation timestamp (UTC). | [readonly] 
**status** | [**ArtifactStatus**](ArtifactStatus.md) |  | 

## Example

```python
from saturn_api.models.artifact import Artifact

# TODO update the JSON string below
json = "{}"
# create an instance of Artifact from a JSON string
artifact_instance = Artifact.from_json(json)
# print the JSON string representation of the object
print(Artifact.to_json())

# convert the object into a dict
artifact_dict = artifact_instance.to_dict()
# create an instance of Artifact from a dict
artifact_from_dict = Artifact.from_dict(artifact_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



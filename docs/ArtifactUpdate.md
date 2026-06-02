# ArtifactUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**ArtifactStatus**](ArtifactStatus.md) |  | [optional] 
**metadata** | **Dict[str, object]** | Updated metadata blob. | [optional] 

## Example

```python
from saturn_api.models.artifact_update import ArtifactUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactUpdate from a JSON string
artifact_update_instance = ArtifactUpdate.from_json(json)
# print the JSON string representation of the object
print(ArtifactUpdate.to_json())

# convert the object into a dict
artifact_update_dict = artifact_update_instance.to_dict()
# create an instance of ArtifactUpdate from a dict
artifact_update_from_dict = ArtifactUpdate.from_dict(artifact_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



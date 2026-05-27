# Dataset


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Dataset identifier. | [readonly] 
**org_id** | **str** | Owning organisation ID. | [readonly] 
**name** | **str** | Human-readable dataset name. | [readonly] 
**kind** | [**ArtifactKind**](ArtifactKind.md) |  | 
**status** | [**ArtifactStatus**](ArtifactStatus.md) |  | 
**location** | **str** | Storage location URI (sf:&lt;folder_id&gt;/&lt;path&gt;). | [readonly] 
**metadata** | **Dict[str, object]** | Arbitrary metadata blob (schema_type, row_count, etc.). | [readonly] 
**created_at** | **str** | Creation timestamp (UTC). | [readonly] 

## Example

```python
from saturn_api.models.dataset import Dataset

# TODO update the JSON string below
json = "{}"
# create an instance of Dataset from a JSON string
dataset_instance = Dataset.from_json(json)
# print the JSON string representation of the object
print(Dataset.to_json())

# convert the object into a dict
dataset_dict = dataset_instance.to_dict()
# create an instance of Dataset from a dict
dataset_from_dict = Dataset.from_dict(dataset_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



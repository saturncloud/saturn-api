# DatasetLockCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Human-readable name for the dataset. | 
**shared_folder_id** | **str** | ID of the existing SharedFolder to lock and register as a dataset. | 
**subpath** | **str** | Optional subpath within the folder where the dataset bytes live (e.g. &#x60;&#x60;data.jsonl&#x60;&#x60; or &#x60;&#x60;subdir/&#x60;&#x60;). Defaults to the folder root. | [optional] 
**metadata** | **Dict[str, object]** | Optional metadata blob (schema_type, row_count, etc.). | [optional] 

## Example

```python
from saturn_api.models.dataset_lock_create import DatasetLockCreate

# TODO update the JSON string below
json = "{}"
# create an instance of DatasetLockCreate from a JSON string
dataset_lock_create_instance = DatasetLockCreate.from_json(json)
# print the JSON string representation of the object
print(DatasetLockCreate.to_json())

# convert the object into a dict
dataset_lock_create_dict = dataset_lock_create_instance.to_dict()
# create an instance of DatasetLockCreate from a dict
dataset_lock_create_from_dict = DatasetLockCreate.from_dict(dataset_lock_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



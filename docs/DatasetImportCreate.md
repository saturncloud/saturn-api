# DatasetImportCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Human-readable name for the dataset. | 
**hf_dataset_id** | **str** | Hugging Face dataset identifier, e.g. &#x60;&#x60;databricks/databricks-dolly-15k&#x60;&#x60;. | 
**split** | **str** | Hugging Face split to import (default: &#x60;&#x60;train&#x60;&#x60;). | [optional] [default to 'train']
**config_name** | **str** | Optional Hugging Face config/subset name. | [optional] 

## Example

```python
from saturn_api.models.dataset_import_create import DatasetImportCreate

# TODO update the JSON string below
json = "{}"
# create an instance of DatasetImportCreate from a JSON string
dataset_import_create_instance = DatasetImportCreate.from_json(json)
# print the JSON string representation of the object
print(DatasetImportCreate.to_json())

# convert the object into a dict
dataset_import_create_dict = dataset_import_create_instance.to_dict()
# create an instance of DatasetImportCreate from a dict
dataset_import_create_from_dict = DatasetImportCreate.from_dict(dataset_import_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# DatasetList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**datasets** | [**List[Dataset]**](Dataset.md) | List of datasets. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.dataset_list import DatasetList

# TODO update the JSON string below
json = "{}"
# create an instance of DatasetList from a JSON string
dataset_list_instance = DatasetList.from_json(json)
# print the JSON string representation of the object
print(DatasetList.to_json())

# convert the object into a dict
dataset_list_dict = dataset_list_instance.to_dict()
# create an instance of DatasetList from a dict
dataset_list_from_dict = DatasetList.from_dict(dataset_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



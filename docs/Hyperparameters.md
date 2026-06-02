# Hyperparameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**learning_rate** | **float** |  | [readonly] 
**epochs** | **int** |  | [readonly] 
**effective_batch_size** | **int** |  | [readonly] 
**max_seq_length** | **int** |  | [readonly] 
**lora_rank** | **int** |  | [readonly] 
**lora_alpha** | **int** |  | [readonly] 

## Example

```python
from saturn_api.models.hyperparameters import Hyperparameters

# TODO update the JSON string below
json = "{}"
# create an instance of Hyperparameters from a JSON string
hyperparameters_instance = Hyperparameters.from_json(json)
# print the JSON string representation of the object
print(Hyperparameters.to_json())

# convert the object into a dict
hyperparameters_dict = hyperparameters_instance.to_dict()
# create an instance of Hyperparameters from a dict
hyperparameters_from_dict = Hyperparameters.from_dict(hyperparameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



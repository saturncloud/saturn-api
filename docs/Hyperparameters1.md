# Hyperparameters1


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**learning_rate** | **float** | Learning rate. Must be in (0, 1). | 
**epochs** | **int** | Number of training epochs. Must be in [1, 10]. | 
**effective_batch_size** | **int** | Effective batch size — the number of samples whose gradients are averaged per optimizer step. The platform translates this to axolotl&#39;s &#x60;&#x60;gradient_accumulation_steps × micro_batch_size&#x60;&#x60;; &#x60;&#x60;micro_batch_size&#x60;&#x60; is auto-found at runtime to fit GPU memory. | 
**max_seq_length** | **int** | Maximum sequence length (tokens) per training sample. Longer sequences use proportionally more GPU memory. Must be in [128, 16384]. | 
**lora_rank** | **int** | LoRA adapter rank. Must be in [1, 128]. | 
**lora_alpha** | **int** | LoRA alpha scaling factor. Must be in [1, 256]. | 

## Example

```python
from saturn_api.models.hyperparameters1 import Hyperparameters1

# TODO update the JSON string below
json = "{}"
# create an instance of Hyperparameters1 from a JSON string
hyperparameters1_instance = Hyperparameters1.from_json(json)
# print the JSON string representation of the object
print(Hyperparameters1.to_json())

# convert the object into a dict
hyperparameters1_dict = hyperparameters1_instance.to_dict()
# create an instance of Hyperparameters1 from a dict
hyperparameters1_from_dict = Hyperparameters1.from_dict(hyperparameters1_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



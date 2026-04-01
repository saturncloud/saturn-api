# SecretCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the secret. | 
**owner** | [**OwnerReference**](OwnerReference.md) | Owner of the secret. | [optional] 
**access** | [**SecretAccessLevel**](SecretAccessLevel.md) |  | [optional] 
**value** | **str** | Value of the secret. | 

## Example

```python
from saturn_api.models.secret_create import SecretCreate

# TODO update the JSON string below
json = "{}"
# create an instance of SecretCreate from a JSON string
secret_create_instance = SecretCreate.from_json(json)
# print the JSON string representation of the object
print(SecretCreate.to_json())

# convert the object into a dict
secret_create_dict = secret_create_instance.to_dict()
# create an instance of SecretCreate from a dict
secret_create_from_dict = SecretCreate.from_dict(secret_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



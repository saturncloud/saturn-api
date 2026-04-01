# Secret


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the secret. | [readonly] 
**name** | **str** | Name of the secret. | [readonly] 
**owner** | [**Owner**](Owner.md) | Owner of the secret. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**access** | [**SecretAccessLevel**](SecretAccessLevel.md) |  | 
**editable** | **bool** | True if the secret is editable by the authenticated user/group. | [optional] [readonly] 

## Example

```python
from saturn_api.models.secret import Secret

# TODO update the JSON string below
json = "{}"
# create an instance of Secret from a JSON string
secret_instance = Secret.from_json(json)
# print the JSON string representation of the object
print(Secret.to_json())

# convert the object into a dict
secret_dict = secret_instance.to_dict()
# create an instance of Secret from a dict
secret_from_dict = Secret.from_dict(secret_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



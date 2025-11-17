# SecretAttachmentUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_type** | [**SecretAttachmentType**](SecretAttachmentType.md) |  | [optional] 
**location** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**secret** | [**SecretCreate**](SecretCreate.md) |  | [optional] 
**secret_id** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.secret_attachment_update import SecretAttachmentUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of SecretAttachmentUpdate from a JSON string
secret_attachment_update_instance = SecretAttachmentUpdate.from_json(json)
# print the JSON string representation of the object
print(SecretAttachmentUpdate.to_json())

# convert the object into a dict
secret_attachment_update_dict = secret_attachment_update_instance.to_dict()
# create an instance of SecretAttachmentUpdate from a dict
secret_attachment_update_from_dict = SecretAttachmentUpdate.from_dict(secret_attachment_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# SecretAttachmentCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment_type** | [**SecretAttachmentType**](SecretAttachmentType.md) |  | [optional] 
**location** | **str** | Location of the attachment on the resource. Format depends on attachment type. | [optional] 
**description** | **str** | Description of the secret attachment. | [optional] [default to '']
**secret** | [**SecretCreate**](SecretCreate.md) | New secret to create and attach to the resource. | [optional] 
**secret_id** | **str** | Secret ID attached to the resource. | [optional] 

## Example

```python
from saturn_api.models.secret_attachment_create import SecretAttachmentCreate

# TODO update the JSON string below
json = "{}"
# create an instance of SecretAttachmentCreate from a JSON string
secret_attachment_create_instance = SecretAttachmentCreate.from_json(json)
# print the JSON string representation of the object
print(SecretAttachmentCreate.to_json())

# convert the object into a dict
secret_attachment_create_dict = secret_attachment_create_instance.to_dict()
# create an instance of SecretAttachmentCreate from a dict
secret_attachment_create_from_dict = SecretAttachmentCreate.from_dict(secret_attachment_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



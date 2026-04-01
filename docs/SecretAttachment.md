# SecretAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the secret attachment. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**attachment_type** | [**SecretAttachmentType**](SecretAttachmentType.md) |  | 
**location** | **str** | Location of the attachment on the resource. Format depends on attachment type. | [readonly] 
**description** | **str** | Description of the secret attachment. | [readonly] 
**secret** | [**Secret**](Secret.md) | Secret attached to the resource. | [readonly] 

## Example

```python
from saturn_api.models.secret_attachment import SecretAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of SecretAttachment from a JSON string
secret_attachment_instance = SecretAttachment.from_json(json)
# print the JSON string representation of the object
print(SecretAttachment.to_json())

# convert the object into a dict
secret_attachment_dict = secret_attachment_instance.to_dict()
# create an instance of SecretAttachment from a dict
secret_attachment_from_dict = SecretAttachment.from_dict(secret_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



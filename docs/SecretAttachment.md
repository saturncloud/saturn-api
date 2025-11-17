# SecretAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**attachment_type** | [**SecretAttachmentType**](SecretAttachmentType.md) |  | 
**location** | **str** |  | [readonly] 
**description** | **str** |  | [readonly] 
**secret** | [**Secret**](Secret.md) |  | [readonly] 

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



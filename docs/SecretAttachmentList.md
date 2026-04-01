# SecretAttachmentList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secret_attachments** | [**List[SecretAttachment]**](SecretAttachment.md) | List of secret attachments. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.secret_attachment_list import SecretAttachmentList

# TODO update the JSON string below
json = "{}"
# create an instance of SecretAttachmentList from a JSON string
secret_attachment_list_instance = SecretAttachmentList.from_json(json)
# print the JSON string representation of the object
print(SecretAttachmentList.to_json())

# convert the object into a dict
secret_attachment_list_dict = secret_attachment_list_instance.to_dict()
# create an instance of SecretAttachmentList from a dict
secret_attachment_list_from_dict = SecretAttachmentList.from_dict(secret_attachment_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



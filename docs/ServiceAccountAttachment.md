# ServiceAccountAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_account** | [**ServiceAccount**](ServiceAccount.md) |  | [readonly] 

## Example

```python
from saturn_api.models.service_account_attachment import ServiceAccountAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceAccountAttachment from a JSON string
service_account_attachment_instance = ServiceAccountAttachment.from_json(json)
# print the JSON string representation of the object
print(ServiceAccountAttachment.to_json())

# convert the object into a dict
service_account_attachment_dict = service_account_attachment_instance.to_dict()
# create an instance of ServiceAccountAttachment from a dict
service_account_attachment_from_dict = ServiceAccountAttachment.from_dict(service_account_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



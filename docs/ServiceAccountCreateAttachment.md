# ServiceAccountCreateAttachment


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_account_id** | **str** |  | 

## Example

```python
from saturn_api.models.service_account_create_attachment import ServiceAccountCreateAttachment

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceAccountCreateAttachment from a JSON string
service_account_create_attachment_instance = ServiceAccountCreateAttachment.from_json(json)
# print the JSON string representation of the object
print(ServiceAccountCreateAttachment.to_json())

# convert the object into a dict
service_account_create_attachment_dict = service_account_create_attachment_instance.to_dict()
# create an instance of ServiceAccountCreateAttachment from a dict
service_account_create_attachment_from_dict = ServiceAccountCreateAttachment.from_dict(service_account_create_attachment_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



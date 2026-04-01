# NotificationDelete


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notification_ids** | **List[str]** | List of notification IDs to delete. | 

## Example

```python
from saturn_api.models.notification_delete import NotificationDelete

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationDelete from a JSON string
notification_delete_instance = NotificationDelete.from_json(json)
# print the JSON string representation of the object
print(NotificationDelete.to_json())

# convert the object into a dict
notification_delete_dict = notification_delete_instance.to_dict()
# create an instance of NotificationDelete from a dict
notification_delete_from_dict = NotificationDelete.from_dict(notification_delete_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



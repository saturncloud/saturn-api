# NotificationsDelete


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notification_ids** | **List[str]** |  | 

## Example

```python
from saturn_api.models.notifications_delete import NotificationsDelete

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationsDelete from a JSON string
notifications_delete_instance = NotificationsDelete.from_json(json)
# print the JSON string representation of the object
print(NotificationsDelete.to_json())

# convert the object into a dict
notifications_delete_dict = notifications_delete_instance.to_dict()
# create an instance of NotificationsDelete from a dict
notifications_delete_from_dict = NotificationsDelete.from_dict(notifications_delete_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



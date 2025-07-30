# NotificationsAcknowledged


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notification_ids** | **List[str]** |  | 
**acknowledged** | **bool** |  | [optional] [default to True]

## Example

```python
from saturn_api.models.notifications_acknowledged import NotificationsAcknowledged

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationsAcknowledged from a JSON string
notifications_acknowledged_instance = NotificationsAcknowledged.from_json(json)
# print the JSON string representation of the object
print(NotificationsAcknowledged.to_json())

# convert the object into a dict
notifications_acknowledged_dict = notifications_acknowledged_instance.to_dict()
# create an instance of NotificationsAcknowledged from a dict
notifications_acknowledged_from_dict = NotificationsAcknowledged.from_dict(notifications_acknowledged_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



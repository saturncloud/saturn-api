# NotificationAcknowledged


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notification_ids** | **List[str]** | List of notification IDs to acknowledge. | 
**acknowledged** | **bool** | Mark notifications as acknowledged or unacknowledged. | [optional] [default to True]

## Example

```python
from saturn_api.models.notification_acknowledged import NotificationAcknowledged

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationAcknowledged from a JSON string
notification_acknowledged_instance = NotificationAcknowledged.from_json(json)
# print the JSON string representation of the object
print(NotificationAcknowledged.to_json())

# convert the object into a dict
notification_acknowledged_dict = notification_acknowledged_instance.to_dict()
# create an instance of NotificationAcknowledged from a dict
notification_acknowledged_from_dict = NotificationAcknowledged.from_dict(notification_acknowledged_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



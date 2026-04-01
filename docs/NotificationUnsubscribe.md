# NotificationUnsubscribe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **str** | Topic of the subscription. | 
**user_id** | **str** | User ID to be unsubscribed. | [optional] 

## Example

```python
from saturn_api.models.notification_unsubscribe import NotificationUnsubscribe

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationUnsubscribe from a JSON string
notification_unsubscribe_instance = NotificationUnsubscribe.from_json(json)
# print the JSON string representation of the object
print(NotificationUnsubscribe.to_json())

# convert the object into a dict
notification_unsubscribe_dict = notification_unsubscribe_instance.to_dict()
# create an instance of NotificationUnsubscribe from a dict
notification_unsubscribe_from_dict = NotificationUnsubscribe.from_dict(notification_unsubscribe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



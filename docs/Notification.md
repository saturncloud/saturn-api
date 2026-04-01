# Notification


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the notification. | [readonly] 
**user_id** | **str** | User ID that is notified. | [readonly] 
**created_at** | **datetime** | Creation timestamp. | [readonly] 
**topic** | **str** | Topic of the notification. | [readonly] 
**message** | **str** | Message content of the notification. | [readonly] 
**data** | **Dict[str, object]** | Additional data associated with the notification. | [readonly] 
**acknowledged** | **bool** | Acknowledged by user. | [readonly] 

## Example

```python
from saturn_api.models.notification import Notification

# TODO update the JSON string below
json = "{}"
# create an instance of Notification from a JSON string
notification_instance = Notification.from_json(json)
# print the JSON string representation of the object
print(Notification.to_json())

# convert the object into a dict
notification_dict = notification_instance.to_dict()
# create an instance of Notification from a dict
notification_from_dict = Notification.from_dict(notification_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



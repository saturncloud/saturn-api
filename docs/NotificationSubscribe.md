# NotificationSubscribe


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**topic** | **str** | Topic of the subscription. | 
**user_id** | **str** | User ID to be subscribed. | [optional] 
**options** | **Dict[str, object]** | Options data for the topic. | [optional] 

## Example

```python
from saturn_api.models.notification_subscribe import NotificationSubscribe

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSubscribe from a JSON string
notification_subscribe_instance = NotificationSubscribe.from_json(json)
# print the JSON string representation of the object
print(NotificationSubscribe.to_json())

# convert the object into a dict
notification_subscribe_dict = notification_subscribe_instance.to_dict()
# create an instance of NotificationSubscribe from a dict
notification_subscribe_from_dict = NotificationSubscribe.from_dict(notification_subscribe_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



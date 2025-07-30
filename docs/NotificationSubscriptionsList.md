# NotificationSubscriptionsList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subscriptions** | [**List[NotificationSubscription]**](NotificationSubscription.md) |  | [optional] [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.notification_subscriptions_list import NotificationSubscriptionsList

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSubscriptionsList from a JSON string
notification_subscriptions_list_instance = NotificationSubscriptionsList.from_json(json)
# print the JSON string representation of the object
print(NotificationSubscriptionsList.to_json())

# convert the object into a dict
notification_subscriptions_list_dict = notification_subscriptions_list_instance.to_dict()
# create an instance of NotificationSubscriptionsList from a dict
notification_subscriptions_list_from_dict = NotificationSubscriptionsList.from_dict(notification_subscriptions_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# NotificationSubscriptionUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**topic** | **str** |  | 
**options** | **Dict[str, object]** |  | [optional] 

## Example

```python
from saturn_api.models.notification_subscription_update import NotificationSubscriptionUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSubscriptionUpdate from a JSON string
notification_subscription_update_instance = NotificationSubscriptionUpdate.from_json(json)
# print the JSON string representation of the object
print(NotificationSubscriptionUpdate.to_json())

# convert the object into a dict
notification_subscription_update_dict = notification_subscription_update_instance.to_dict()
# create an instance of NotificationSubscriptionUpdate from a dict
notification_subscription_update_from_dict = NotificationSubscriptionUpdate.from_dict(notification_subscription_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



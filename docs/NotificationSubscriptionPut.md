# NotificationSubscriptionPut


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**topic** | **str** |  | 
**options** | **Dict[str, object]** |  | [optional] 

## Example

```python
from saturn_api.models.notification_subscription_put import NotificationSubscriptionPut

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSubscriptionPut from a JSON string
notification_subscription_put_instance = NotificationSubscriptionPut.from_json(json)
# print the JSON string representation of the object
print(NotificationSubscriptionPut.to_json())

# convert the object into a dict
notification_subscription_put_dict = notification_subscription_put_instance.to_dict()
# create an instance of NotificationSubscriptionPut from a dict
notification_subscription_put_from_dict = NotificationSubscriptionPut.from_dict(notification_subscription_put_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



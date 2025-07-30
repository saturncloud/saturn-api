# NotificationSubscriptionDelete


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**topic** | **str** |  | 

## Example

```python
from saturn_api.models.notification_subscription_delete import NotificationSubscriptionDelete

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSubscriptionDelete from a JSON string
notification_subscription_delete_instance = NotificationSubscriptionDelete.from_json(json)
# print the JSON string representation of the object
print(NotificationSubscriptionDelete.to_json())

# convert the object into a dict
notification_subscription_delete_dict = notification_subscription_delete_instance.to_dict()
# create an instance of NotificationSubscriptionDelete from a dict
notification_subscription_delete_from_dict = NotificationSubscriptionDelete.from_dict(notification_subscription_delete_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



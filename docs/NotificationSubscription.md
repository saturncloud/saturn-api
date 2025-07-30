# NotificationSubscription


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | 
**topic** | **str** |  | 
**options** | **Dict[str, object]** |  | [optional] 
**id** | **str** |  | 

## Example

```python
from saturn_api.models.notification_subscription import NotificationSubscription

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationSubscription from a JSON string
notification_subscription_instance = NotificationSubscription.from_json(json)
# print the JSON string representation of the object
print(NotificationSubscription.to_json())

# convert the object into a dict
notification_subscription_dict = notification_subscription_instance.to_dict()
# create an instance of NotificationSubscription from a dict
notification_subscription_from_dict = NotificationSubscription.from_dict(notification_subscription_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



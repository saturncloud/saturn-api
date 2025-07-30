# NotificationsList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**notifications** | [**List[Notification]**](Notification.md) |  | 
**prev_key** | **str** |  | [optional] 
**next_key** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.notifications_list import NotificationsList

# TODO update the JSON string below
json = "{}"
# create an instance of NotificationsList from a JSON string
notifications_list_instance = NotificationsList.from_json(json)
# print the JSON string representation of the object
print(NotificationsList.to_json())

# convert the object into a dict
notifications_list_dict = notifications_list_instance.to_dict()
# create an instance of NotificationsList from a dict
notifications_list_from_dict = NotificationsList.from_dict(notifications_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



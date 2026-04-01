# UserPreferencesUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_org_id** | **str** | Default org ID for the user. | 

## Example

```python
from saturn_api.models.user_preferences_update import UserPreferencesUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of UserPreferencesUpdate from a JSON string
user_preferences_update_instance = UserPreferencesUpdate.from_json(json)
# print the JSON string representation of the object
print(UserPreferencesUpdate.to_json())

# convert the object into a dict
user_preferences_update_dict = user_preferences_update_instance.to_dict()
# create an instance of UserPreferencesUpdate from a dict
user_preferences_update_from_dict = UserPreferencesUpdate.from_dict(user_preferences_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



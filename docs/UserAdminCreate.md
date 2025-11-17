# UserAdminCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** |  | 
**email** | **str** |  | 
**full_name** | **str** |  | [optional] 
**admin** | **bool** |  | [optional] [default to False]
**limits_id** | **str** |  | [optional] 
**send_reset_email** | **bool** |  | [optional] [default to True]
**locked** | **bool** |  | [optional] [default to False]
**prevent_duplicate_emails** | **bool** |  | [optional] [default to False]

## Example

```python
from saturn_api.models.user_admin_create import UserAdminCreate

# TODO update the JSON string below
json = "{}"
# create an instance of UserAdminCreate from a JSON string
user_admin_create_instance = UserAdminCreate.from_json(json)
# print the JSON string representation of the object
print(UserAdminCreate.to_json())

# convert the object into a dict
user_admin_create_dict = user_admin_create_instance.to_dict()
# create an instance of UserAdminCreate from a dict
user_admin_create_from_dict = UserAdminCreate.from_dict(user_admin_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



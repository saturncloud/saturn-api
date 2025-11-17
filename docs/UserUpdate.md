# UserUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**username** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**is_multiple_ssh_keys** | **bool** |  | [optional] 
**active** | **bool** |  | [optional] 
**admin** | **bool** |  | [optional] 
**locked** | **bool** |  | [optional] 
**limits_id** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.user_update import UserUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of UserUpdate from a JSON string
user_update_instance = UserUpdate.from_json(json)
# print the JSON string representation of the object
print(UserUpdate.to_json())

# convert the object into a dict
user_update_dict = user_update_instance.to_dict()
# create an instance of UserUpdate from a dict
user_update_from_dict = UserUpdate.from_dict(user_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



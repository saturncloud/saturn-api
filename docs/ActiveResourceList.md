# ActiveResourceList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resources** | [**List[Resource]**](Resource.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.active_resource_list import ActiveResourceList

# TODO update the JSON string below
json = "{}"
# create an instance of ActiveResourceList from a JSON string
active_resource_list_instance = ActiveResourceList.from_json(json)
# print the JSON string representation of the object
print(ActiveResourceList.to_json())

# convert the object into a dict
active_resource_list_dict = active_resource_list_instance.to_dict()
# create an instance of ActiveResourceList from a dict
active_resource_list_from_dict = ActiveResourceList.from_dict(active_resource_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



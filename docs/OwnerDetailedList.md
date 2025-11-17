# OwnerDetailedList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owners** | [**List[OwnerDetailed]**](OwnerDetailed.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.owner_detailed_list import OwnerDetailedList

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerDetailedList from a JSON string
owner_detailed_list_instance = OwnerDetailedList.from_json(json)
# print the JSON string representation of the object
print(OwnerDetailedList.to_json())

# convert the object into a dict
owner_detailed_list_dict = owner_detailed_list_instance.to_dict()
# create an instance of OwnerDetailedList from a dict
owner_detailed_list_from_dict = OwnerDetailedList.from_dict(owner_detailed_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



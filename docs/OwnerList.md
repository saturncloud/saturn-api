# OwnerList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**owners** | [**List[Owner]**](Owner.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.owner_list import OwnerList

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerList from a JSON string
owner_list_instance = OwnerList.from_json(json)
# print the JSON string representation of the object
print(OwnerList.to_json())

# convert the object into a dict
owner_list_dict = owner_list_instance.to_dict()
# create an instance of OwnerList from a dict
owner_list_from_dict = OwnerList.from_dict(owner_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



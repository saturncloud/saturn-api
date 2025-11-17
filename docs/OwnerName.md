# OwnerName


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] [readonly] 
**identity_name** | **str** |  | [optional] [readonly] 
**avatar_url** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.owner_name import OwnerName

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerName from a JSON string
owner_name_instance = OwnerName.from_json(json)
# print the JSON string representation of the object
print(OwnerName.to_json())

# convert the object into a dict
owner_name_dict = owner_name_instance.to_dict()
# create an instance of OwnerName from a dict
owner_name_from_dict = OwnerName.from_dict(owner_name_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



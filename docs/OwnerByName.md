# OwnerByName


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Reference owner by name. | 

## Example

```python
from saturn_api.models.owner_by_name import OwnerByName

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerByName from a JSON string
owner_by_name_instance = OwnerByName.from_json(json)
# print the JSON string representation of the object
print(OwnerByName.to_json())

# convert the object into a dict
owner_by_name_dict = owner_by_name_instance.to_dict()
# create an instance of OwnerByName from a dict
owner_by_name_from_dict = OwnerByName.from_dict(owner_by_name_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



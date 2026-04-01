# OwnerById


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Reference owner by ID. | 

## Example

```python
from saturn_api.models.owner_by_id import OwnerById

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerById from a JSON string
owner_by_id_instance = OwnerById.from_json(json)
# print the JSON string representation of the object
print(OwnerById.to_json())

# convert the object into a dict
owner_by_id_dict = owner_by_id_instance.to_dict()
# create an instance of OwnerById from a dict
owner_by_id_from_dict = OwnerById.from_dict(owner_by_id_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



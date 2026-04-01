# OwnerReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Reference owner by name. | 
**id** | **str** | Reference owner by ID. | 
**user_id** | **str** | Reference owner by user ID. | [optional] 
**group_id** | **str** | Reference owner by group ID. | [optional] 
**org_id** | **str** | Reference owner by org ID. | [optional] 

## Example

```python
from saturn_api.models.owner_reference import OwnerReference

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerReference from a JSON string
owner_reference_instance = OwnerReference.from_json(json)
# print the JSON string representation of the object
print(OwnerReference.to_json())

# convert the object into a dict
owner_reference_dict = owner_reference_instance.to_dict()
# create an instance of OwnerReference from a dict
owner_reference_from_dict = OwnerReference.from_dict(owner_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



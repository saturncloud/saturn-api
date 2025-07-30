# PaginationOffsetMeta


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**next** | **str** |  | [optional] 
**prev** | **str** |  | [optional] 
**total_count** | **int** |  | [optional] 

## Example

```python
from saturn_api.models.pagination_offset_meta import PaginationOffsetMeta

# TODO update the JSON string below
json = "{}"
# create an instance of PaginationOffsetMeta from a JSON string
pagination_offset_meta_instance = PaginationOffsetMeta.from_json(json)
# print the JSON string representation of the object
print(PaginationOffsetMeta.to_json())

# convert the object into a dict
pagination_offset_meta_dict = pagination_offset_meta_instance.to_dict()
# create an instance of PaginationOffsetMeta from a dict
pagination_offset_meta_from_dict = PaginationOffsetMeta.from_dict(pagination_offset_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



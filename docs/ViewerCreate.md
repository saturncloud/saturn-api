# ViewerCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identity** | [**IdentityReference**](IdentityReference.md) |  | 
**route_id** | **str** |  | [optional] 

## Example

```python
from saturn_api.models.viewer_create import ViewerCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ViewerCreate from a JSON string
viewer_create_instance = ViewerCreate.from_json(json)
# print the JSON string representation of the object
print(ViewerCreate.to_json())

# convert the object into a dict
viewer_create_dict = viewer_create_instance.to_dict()
# create an instance of ViewerCreate from a dict
viewer_create_from_dict = ViewerCreate.from_dict(viewer_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



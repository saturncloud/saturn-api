# Viewer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**group_id** | **str** |  | [optional] 
**route_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] [readonly] 
**created_at** | **str** |  | [optional] [readonly] 
**name** | **str** |  | [readonly] 
**avatar_url** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.viewer import Viewer

# TODO update the JSON string below
json = "{}"
# create an instance of Viewer from a JSON string
viewer_instance = Viewer.from_json(json)
# print the JSON string representation of the object
print(Viewer.to_json())

# convert the object into a dict
viewer_dict = viewer_instance.to_dict()
# create an instance of Viewer from a dict
viewer_from_dict = Viewer.from_dict(viewer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



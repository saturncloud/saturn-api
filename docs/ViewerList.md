# ViewerList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**viewers** | [**List[Viewer]**](Viewer.md) | List of viewers. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.viewer_list import ViewerList

# TODO update the JSON string below
json = "{}"
# create an instance of ViewerList from a JSON string
viewer_list_instance = ViewerList.from_json(json)
# print the JSON string representation of the object
print(ViewerList.to_json())

# convert the object into a dict
viewer_list_dict = viewer_list_instance.to_dict()
# create an instance of ViewerList from a dict
viewer_list_from_dict = ViewerList.from_dict(viewer_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# ViewersList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**viewers** | [**List[Viewer]**](Viewer.md) |  | [optional] 

## Example

```python
from saturn_api.models.viewers_list import ViewersList

# TODO update the JSON string below
json = "{}"
# create an instance of ViewersList from a JSON string
viewers_list_instance = ViewersList.from_json(json)
# print the JSON string representation of the object
print(ViewersList.to_json())

# convert the object into a dict
viewers_list_dict = viewers_list_instance.to_dict()
# create an instance of ViewersList from a dict
viewers_list_from_dict = ViewersList.from_dict(viewers_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



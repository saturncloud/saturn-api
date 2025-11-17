# SharedFolder


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**name** | **str** |  | [readonly] 
**owner** | [**Owner**](Owner.md) |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**access** | [**SharedFolderAccessLevel**](SharedFolderAccessLevel.md) |  | 
**access_mode** | [**SharedAccessMode**](SharedAccessMode.md) |  | 
**is_external** | **bool** |  | [readonly] 
**editable** | **bool** |  | [readonly] 

## Example

```python
from saturn_api.models.shared_folder import SharedFolder

# TODO update the JSON string below
json = "{}"
# create an instance of SharedFolder from a JSON string
shared_folder_instance = SharedFolder.from_json(json)
# print the JSON string representation of the object
print(SharedFolder.to_json())

# convert the object into a dict
shared_folder_dict = shared_folder_instance.to_dict()
# create an instance of SharedFolder from a dict
shared_folder_from_dict = SharedFolder.from_dict(shared_folder_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



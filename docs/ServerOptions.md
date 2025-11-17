# ServerOptions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_shutoff** | **List[str]** |  | [readonly] 
**disk_space** | **List[str]** |  | [readonly] 
**sizes** | [**Dict[str, InstanceSize]**](InstanceSize.md) |  | [readonly] 

## Example

```python
from saturn_api.models.server_options import ServerOptions

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOptions from a JSON string
server_options_instance = ServerOptions.from_json(json)
# print the JSON string representation of the object
print(ServerOptions.to_json())

# convert the object into a dict
server_options_dict = server_options_instance.to_dict()
# create an instance of ServerOptions from a dict
server_options_from_dict = ServerOptions.from_dict(server_options_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



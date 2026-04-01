# ServerOptionsSize


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**size** | [**List[InstanceSize]**](InstanceSize.md) | List of available instance sizes. | [readonly] 

## Example

```python
from saturn_api.models.server_options_size import ServerOptionsSize

# TODO update the JSON string below
json = "{}"
# create an instance of ServerOptionsSize from a JSON string
server_options_size_instance = ServerOptionsSize.from_json(json)
# print the JSON string representation of the object
print(ServerOptionsSize.to_json())

# convert the object into a dict
server_options_size_dict = server_options_size_instance.to_dict()
# create an instance of ServerOptionsSize from a dict
server_options_size_from_dict = ServerOptionsSize.from_dict(server_options_size_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



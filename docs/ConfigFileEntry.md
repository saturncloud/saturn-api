# ConfigFileEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **str** | Content of the config file. | 
**mode** | **str** | File mode as a 4-character octal string, e.g. &#39;0644&#39;. | [optional] [default to '0644']

## Example

```python
from saturn_api.models.config_file_entry import ConfigFileEntry

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigFileEntry from a JSON string
config_file_entry_instance = ConfigFileEntry.from_json(json)
# print the JSON string representation of the object
print(ConfigFileEntry.to_json())

# convert the object into a dict
config_file_entry_dict = config_file_entry_instance.to_dict()
# create an instance of ConfigFileEntry from a dict
config_file_entry_from_dict = ConfigFileEntry.from_dict(config_file_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



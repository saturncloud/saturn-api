# DefaultSizes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | [**InstanceSize**](InstanceSize.md) |  | [optional] 
**nvidia** | [**InstanceSize**](InstanceSize.md) |  | [optional] 
**amd** | [**InstanceSize**](InstanceSize.md) |  | [optional] 

## Example

```python
from saturn_api.models.default_sizes import DefaultSizes

# TODO update the JSON string below
json = "{}"
# create an instance of DefaultSizes from a JSON string
default_sizes_instance = DefaultSizes.from_json(json)
# print the JSON string representation of the object
print(DefaultSizes.to_json())

# convert the object into a dict
default_sizes_dict = default_sizes_instance.to_dict()
# create an instance of DefaultSizes from a dict
default_sizes_from_dict = DefaultSizes.from_dict(default_sizes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



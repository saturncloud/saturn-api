# DiskSpaceOption


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **str** | Kubernetes-style disk size (e.g. &#39;100Gi&#39;) submitted when creating a resource. | [readonly] 
**display_str** | **str** | Human-readable label shown in the picker. | [readonly] 

## Example

```python
from saturn_api.models.disk_space_option import DiskSpaceOption

# TODO update the JSON string below
json = "{}"
# create an instance of DiskSpaceOption from a JSON string
disk_space_option_instance = DiskSpaceOption.from_json(json)
# print the JSON string representation of the object
print(DiskSpaceOption.to_json())

# convert the object into a dict
disk_space_option_dict = disk_space_option_instance.to_dict()
# create an instance of DiskSpaceOption from a dict
disk_space_option_from_dict = DiskSpaceOption.from_dict(disk_space_option_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



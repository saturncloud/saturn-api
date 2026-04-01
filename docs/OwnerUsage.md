# OwnerUsage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hours** | **float** | Compute hours used. | 
**dollars** | **float** | Dollars spent. | 
**owner** | [**UsageOwner**](UsageOwner.md) | Usage record owner identity. | [optional] 

## Example

```python
from saturn_api.models.owner_usage import OwnerUsage

# TODO update the JSON string below
json = "{}"
# create an instance of OwnerUsage from a JSON string
owner_usage_instance = OwnerUsage.from_json(json)
# print the JSON string representation of the object
print(OwnerUsage.to_json())

# convert the object into a dict
owner_usage_dict = owner_usage_instance.to_dict()
# create an instance of OwnerUsage from a dict
owner_usage_from_dict = OwnerUsage.from_dict(owner_usage_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



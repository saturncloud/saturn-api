# ServiceAccountEntitlement


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [readonly] 
**created_at** | **str** |  | [readonly] 
**service_account** | [**ServiceAccount**](ServiceAccount.md) |  | [readonly] 
**user_id** | **str** |  | [readonly] 
**group_id** | **str** |  | [readonly] 

## Example

```python
from saturn_api.models.service_account_entitlement import ServiceAccountEntitlement

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceAccountEntitlement from a JSON string
service_account_entitlement_instance = ServiceAccountEntitlement.from_json(json)
# print the JSON string representation of the object
print(ServiceAccountEntitlement.to_json())

# convert the object into a dict
service_account_entitlement_dict = service_account_entitlement_instance.to_dict()
# create an instance of ServiceAccountEntitlement from a dict
service_account_entitlement_from_dict = ServiceAccountEntitlement.from_dict(service_account_entitlement_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



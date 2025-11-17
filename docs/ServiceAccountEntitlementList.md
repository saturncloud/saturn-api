# ServiceAccountEntitlementList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_account_entitlements** | [**List[ServiceAccountEntitlement]**](ServiceAccountEntitlement.md) |  | [readonly] 
**prev_key** | **str** |  | [optional] [readonly] 
**next_key** | **str** |  | [optional] [readonly] 

## Example

```python
from saturn_api.models.service_account_entitlement_list import ServiceAccountEntitlementList

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceAccountEntitlementList from a JSON string
service_account_entitlement_list_instance = ServiceAccountEntitlementList.from_json(json)
# print the JSON string representation of the object
print(ServiceAccountEntitlementList.to_json())

# convert the object into a dict
service_account_entitlement_list_dict = service_account_entitlement_list_instance.to_dict()
# create an instance of ServiceAccountEntitlementList from a dict
service_account_entitlement_list_from_dict = ServiceAccountEntitlementList.from_dict(service_account_entitlement_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



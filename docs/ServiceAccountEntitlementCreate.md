# ServiceAccountEntitlementCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_account_id** | **str** |  | 
**identity** | [**IdentityReference**](IdentityReference.md) |  | [optional] 

## Example

```python
from saturn_api.models.service_account_entitlement_create import ServiceAccountEntitlementCreate

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceAccountEntitlementCreate from a JSON string
service_account_entitlement_create_instance = ServiceAccountEntitlementCreate.from_json(json)
# print the JSON string representation of the object
print(ServiceAccountEntitlementCreate.to_json())

# convert the object into a dict
service_account_entitlement_create_dict = service_account_entitlement_create_instance.to_dict()
# create an instance of ServiceAccountEntitlementCreate from a dict
service_account_entitlement_create_from_dict = ServiceAccountEntitlementCreate.from_dict(service_account_entitlement_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



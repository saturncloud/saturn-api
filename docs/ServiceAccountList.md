# ServiceAccountList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_accounts** | [**List[ServiceAccount]**](ServiceAccount.md) | List of service accounts. | [readonly] 
**prev_key** | **str** | Previous page key. | [optional] [readonly] 
**next_key** | **str** | Next page key. | [optional] [readonly] 

## Example

```python
from saturn_api.models.service_account_list import ServiceAccountList

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceAccountList from a JSON string
service_account_list_instance = ServiceAccountList.from_json(json)
# print the JSON string representation of the object
print(ServiceAccountList.to_json())

# convert the object into a dict
service_account_list_dict = service_account_list_instance.to_dict()
# create an instance of ServiceAccountList from a dict
service_account_list_from_dict = ServiceAccountList.from_dict(service_account_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



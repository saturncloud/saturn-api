# Owner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | ID of the owner | [readonly] 
**name** | **str** | Name of the owner (format: &#39;&lt;org&gt;/&lt;identity&gt;&#39;) | [readonly] 
**identity_name** | **str** | Name of the owner&#39;s identity | [readonly] 
**org_name** | **str** | Name of the org the owner belongs to. | [readonly] 
**created_at** | **str** | Creation timestamp. | [readonly] 
**org_admin** | **bool** | Enable the owner to take privileged actions on its org. | [readonly] 
**org_id** | **str** | Org ID the owner belongs to. | [readonly] 
**user_id** | **str** | User ID of the owner. | [optional] [readonly] 
**group_id** | **str** | Group ID of the owner. | [optional] [readonly] 
**identity_type** | [**IdentityType**](IdentityType.md) |  | 
**avatar_url** | **str** | Avatar URL of the owner&#39;s identity. | [readonly] 

## Example

```python
from saturn_api.models.owner import Owner

# TODO update the JSON string below
json = "{}"
# create an instance of Owner from a JSON string
owner_instance = Owner.from_json(json)
# print the JSON string representation of the object
print(Owner.to_json())

# convert the object into a dict
owner_dict = owner_instance.to_dict()
# create an instance of Owner from a dict
owner_from_dict = Owner.from_dict(owner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



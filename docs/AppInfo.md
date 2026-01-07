# AppInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloud_provider** | **str** |  | 
**is_multicluster** | **bool** |  | 
**allow_deployment_public_access** | **bool** |  | 
**is_enterprise** | **bool** |  | 
**customer_name** | **str** |  | 
**stripe_public_key** | **bool** |  | 
**hotjar_user_tracking** | **bool** |  | 
**version** | **str** |  | 
**auth0** | [**Auth0Info**](Auth0Info.md) |  | 
**network_filesystem_enabled** | **bool** |  | 
**git_repo_clone_dir** | **str** |  | 
**app_serving_domain** | **str** |  | 
**dind_enabled** | **bool** |  | 
**apply_requires_confirm** | **bool** |  | 
**hide_invitations** | **bool** |  | 
**populate_examples** | **bool** |  | 
**whitelabel** | [**WhiteLabelConfiguration**](WhiteLabelConfiguration.md) |  | 
**user_tracking** | **bool** |  | 

## Example

```python
from saturn_api.models.app_info import AppInfo

# TODO update the JSON string below
json = "{}"
# create an instance of AppInfo from a JSON string
app_info_instance = AppInfo.from_json(json)
# print the JSON string representation of the object
print(AppInfo.to_json())

# convert the object into a dict
app_info_dict = app_info_instance.to_dict()
# create an instance of AppInfo from a dict
app_info_from_dict = AppInfo.from_dict(app_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



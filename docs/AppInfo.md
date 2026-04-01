# AppInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloud_provider** | **str** | Name of the primary cloud provider. | 
**is_multicluster** | **bool** | True if installation spans multiple clusters. | 
**allow_deployment_public_access** | **bool** | True if unauthenticated deployment access is allowed. | 
**is_enterprise** | **bool** | True if installation is Enterprise. | 
**customer_name** | **str** | Name of the customer installation. | 
**stripe_public_key** | **str** | Public key for billing in non-enterprise installations. | 
**hotjar_user_tracking** | **bool** | True if hotjar is enabled. | 
**version** | **str** | Version of the API. | 
**auth0** | [**Auth0Info**](Auth0Info.md) | Configuration for auth0 authentication. | 
**network_filesystem_enabled** | **bool** | True if NFS shared folders are enabled. | 
**git_repo_clone_dir** | **str** | Default directory to clone git repositories into. | 
**app_serving_domain** | **str** | Root domain for deployment and workspace URLs. | 
**dind_enabled** | **bool** | True if docker-in-docker is enabled. | 
**apply_requires_confirm** | **bool** | True if recipe apply should be confirmed. | 
**hide_invitations** | **bool** | True if invitations are hidden in frontend. | 
**populate_examples** | **bool** | True if saturn examples are included. | 
**whitelabel** | [**WhiteLabelConfiguration**](WhiteLabelConfiguration.md) | Configuration for whitelabeled installations. | 
**hide_resource_creation_bar** | **bool** | True if resource creation bar should be hidden. | 
**user_tracking** | **bool** | True if intercomm tracking is enabled. | 

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



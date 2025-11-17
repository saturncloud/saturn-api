# Auth0Info


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | 
**connections** | **Dict[str, str]** |  | 
**disable_native_login** | **bool** |  | 

## Example

```python
from saturn_api.models.auth0_info import Auth0Info

# TODO update the JSON string below
json = "{}"
# create an instance of Auth0Info from a JSON string
auth0_info_instance = Auth0Info.from_json(json)
# print the JSON string representation of the object
print(Auth0Info.to_json())

# convert the object into a dict
auth0_info_dict = auth0_info_instance.to_dict()
# create an instance of Auth0Info from a dict
auth0_info_from_dict = Auth0Info.from_dict(auth0_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



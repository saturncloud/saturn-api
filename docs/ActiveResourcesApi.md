# saturn_api.ActiveResourcesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list**](ActiveResourcesApi.md#list) | **GET** /api/active/resources | List active resources


# **list**
> ActiveResourceList list(user_id=user_id, group_id=group_id, org_id=org_id, resource_type=resource_type, list_by=list_by, prev_key=prev_key, next_key=next_key, page_size=page_size)

List active resources

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.active_resource_list import ActiveResourceList
from saturn_api.models.resource_type import ResourceType
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to the SATURN_BASE_URL env or http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = os.getenv("SATURN_BASE_URL", "http://localhost")
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth, defaults to the SATURN_TOKEN env
configuration = saturn_api.Configuration(
    access_token = os.environ["SATURN_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.ActiveResourcesApi(api_client)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    resource_type = saturn_api.ResourceType() # ResourceType |  (optional)
    list_by = owner # str |  (optional) (default to owner)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        # List active resources
        api_response = await api_instance.list(user_id=user_id, group_id=group_id, org_id=org_id, resource_type=resource_type, list_by=list_by, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of ActiveResourcesApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ActiveResourcesApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  | [optional] 
 **group_id** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **resource_type** | [**ResourceType**](.md)|  | [optional] 
 **list_by** | **str**|  | [optional] [default to owner]
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]

### Return type

[**ActiveResourceList**](ActiveResourceList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


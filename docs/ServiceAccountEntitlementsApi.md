# saturn_api.ServiceAccountEntitlementsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ServiceAccountEntitlementsApi.md#create) | **POST** /api/service_account_entitlements | Create service account entitlement
[**delete**](ServiceAccountEntitlementsApi.md#delete) | **DELETE** /api/service_account_entitlements/{service_account_entitlement_id} | Delete service account entitlement
[**get**](ServiceAccountEntitlementsApi.md#get) | **GET** /api/service_account_entitlements/{service_account_entitlement_id} | Get service account entitlement
[**list**](ServiceAccountEntitlementsApi.md#list) | **GET** /api/service_account_entitlements | List service account entitlements


# **create**
> ServiceAccountEntitlement create(service_account_entitlement_create)

Create service account entitlement

Create a new service account entitlement.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_entitlement import ServiceAccountEntitlement
from saturn_api.models.service_account_entitlement_create import ServiceAccountEntitlementCreate
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
    api_instance = saturn_api.ServiceAccountEntitlementsApi(api_client)
    service_account_entitlement_create = saturn_api.ServiceAccountEntitlementCreate() # ServiceAccountEntitlementCreate | 

    try:
        # Create service account entitlement
        api_response = await api_instance.create(service_account_entitlement_create)
        print("The response of ServiceAccountEntitlementsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountEntitlementsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_entitlement_create** | [**ServiceAccountEntitlementCreate**](ServiceAccountEntitlementCreate.md)|  | 

### Return type

[**ServiceAccountEntitlement**](ServiceAccountEntitlement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(service_account_entitlement_id)

Delete service account entitlement

Delete a service account entitlement.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
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
    api_instance = saturn_api.ServiceAccountEntitlementsApi(api_client)
    service_account_entitlement_id = 'service_account_entitlement_id_example' # str | 

    try:
        # Delete service account entitlement
        await api_instance.delete(service_account_entitlement_id)
    except Exception as e:
        print("Exception when calling ServiceAccountEntitlementsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_entitlement_id** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get**
> ServiceAccountEntitlement get(service_account_entitlement_id)

Get service account entitlement

Get a service account entitlement.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_entitlement import ServiceAccountEntitlement
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
    api_instance = saturn_api.ServiceAccountEntitlementsApi(api_client)
    service_account_entitlement_id = 'service_account_entitlement_id_example' # str | 

    try:
        # Get service account entitlement
        api_response = await api_instance.get(service_account_entitlement_id)
        print("The response of ServiceAccountEntitlementsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountEntitlementsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_entitlement_id** | **str**|  | 

### Return type

[**ServiceAccountEntitlement**](ServiceAccountEntitlement.md)

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

# **list**
> ServiceAccountEntitlementList list(user_id=user_id, group_id=group_id, identity=identity, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List service account entitlements

Paginated list of service account entitlements.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_entitlement_list import ServiceAccountEntitlementList
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
    api_instance = saturn_api.ServiceAccountEntitlementsApi(api_client)
    user_id = 'user_id_example' # str | Identity reference by user ID (optional)
    group_id = 'group_id_example' # str | Identity reference by group ID (optional)
    identity = 'identity_example' # str | Identity reference by name (optional)
    name = 'name_example' # str | Prefix matched search string on entitled service account name. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List service account entitlements
        api_response = await api_instance.list(user_id=user_id, group_id=group_id, identity=identity, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ServiceAccountEntitlementsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountEntitlementsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**| Identity reference by user ID | [optional] 
 **group_id** | **str**| Identity reference by group ID | [optional] 
 **identity** | **str**| Identity reference by name | [optional] 
 **name** | **str**| Prefix matched search string on entitled service account name. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**ServiceAccountEntitlementList**](ServiceAccountEntitlementList.md)

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


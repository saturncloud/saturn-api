# saturn_api.ServiceAccountsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ServiceAccountsApi.md#create) | **POST** /api/service_accounts | Create service account
[**delete**](ServiceAccountsApi.md#delete) | **DELETE** /api/service_accounts/{service_account_id} | Delete service account
[**get**](ServiceAccountsApi.md#get) | **GET** /api/service_accounts/{service_account_id} | Get service account
[**list**](ServiceAccountsApi.md#list) | **GET** /api/service_accounts | List service accounts
[**update**](ServiceAccountsApi.md#update) | **PATCH** /api/service_accounts/{service_account_id} | Update service account


# **create**
> ServiceAccount create(service_account_create)

Create service account

Create a new service account.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account import ServiceAccount
from saturn_api.models.service_account_create import ServiceAccountCreate
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
    api_instance = saturn_api.ServiceAccountsApi(api_client)
    service_account_create = saturn_api.ServiceAccountCreate() # ServiceAccountCreate | 

    try:
        # Create service account
        api_response = await api_instance.create(service_account_create)
        print("The response of ServiceAccountsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_create** | [**ServiceAccountCreate**](ServiceAccountCreate.md)|  | 

### Return type

[**ServiceAccount**](ServiceAccount.md)

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
> delete(service_account_id)

Delete service account

Delete a service account.

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
    api_instance = saturn_api.ServiceAccountsApi(api_client)
    service_account_id = 'service_account_id_example' # str | 

    try:
        # Delete service account
        await api_instance.delete(service_account_id)
    except Exception as e:
        print("Exception when calling ServiceAccountsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **str**|  | 

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
> ServiceAccount get(service_account_id)

Get service account

Get a service account.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account import ServiceAccount
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
    api_instance = saturn_api.ServiceAccountsApi(api_client)
    service_account_id = 'service_account_id_example' # str | 

    try:
        # Get service account
        api_response = await api_instance.get(service_account_id)
        print("The response of ServiceAccountsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **str**|  | 

### Return type

[**ServiceAccount**](ServiceAccount.md)

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
> ServiceAccountList list(name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List service accounts

Paginated list of service accounts.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_list import ServiceAccountList
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
    api_instance = saturn_api.ServiceAccountsApi(api_client)
    name = 'name_example' # str | Prefix matched search string on service account name. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List service accounts
        api_response = await api_instance.list(name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ServiceAccountsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Prefix matched search string on service account name. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**ServiceAccountList**](ServiceAccountList.md)

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

# **update**
> ServiceAccount update(service_account_id, service_account_update)

Update service account

Update a service account.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account import ServiceAccount
from saturn_api.models.service_account_update import ServiceAccountUpdate
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
    api_instance = saturn_api.ServiceAccountsApi(api_client)
    service_account_id = 'service_account_id_example' # str | 
    service_account_update = saturn_api.ServiceAccountUpdate() # ServiceAccountUpdate | 

    try:
        # Update service account
        api_response = await api_instance.update(service_account_id, service_account_update)
        print("The response of ServiceAccountsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceAccountsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **service_account_id** | **str**|  | 
 **service_account_update** | [**ServiceAccountUpdate**](ServiceAccountUpdate.md)|  | 

### Return type

[**ServiceAccount**](ServiceAccount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Updated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


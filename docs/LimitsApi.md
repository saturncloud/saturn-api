# saturn_api.LimitsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](LimitsApi.md#create) | **POST** /api/limits | Create limits
[**delete**](LimitsApi.md#delete) | **DELETE** /api/limits/{limits_id} | Delete limits
[**get**](LimitsApi.md#get) | **GET** /api/limits/{limits_id} | Get limits
[**list**](LimitsApi.md#list) | **GET** /api/limits | List limits
[**update**](LimitsApi.md#update) | **PATCH** /api/limits/{limits_id} | Update limits


# **create**
> UsageLimits create(usage_limits_create)

Create limits

Create a new limits.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
from saturn_api.models.usage_limits_create import UsageLimitsCreate
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
    api_instance = saturn_api.LimitsApi(api_client)
    usage_limits_create = saturn_api.UsageLimitsCreate() # UsageLimitsCreate | 

    try:
        # Create limits
        api_response = await api_instance.create(usage_limits_create)
        print("The response of LimitsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LimitsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_limits_create** | [**UsageLimitsCreate**](UsageLimitsCreate.md)|  | 

### Return type

[**UsageLimits**](UsageLimits.md)

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
> delete(limits_id)

Delete limits

Delete a limits.

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
    api_instance = saturn_api.LimitsApi(api_client)
    limits_id = 'limits_id_example' # str | 

    try:
        # Delete limits
        await api_instance.delete(limits_id)
    except Exception as e:
        print("Exception when calling LimitsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limits_id** | **str**|  | 

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
> UsageLimits get(limits_id)

Get limits

Get a limits.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
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
    api_instance = saturn_api.LimitsApi(api_client)
    limits_id = 'limits_id_example' # str | 

    try:
        # Get limits
        api_response = await api_instance.get(limits_id)
        print("The response of LimitsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LimitsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limits_id** | **str**|  | 

### Return type

[**UsageLimits**](UsageLimits.md)

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
> UsageLimitsList list(name=name, org_id=org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List limits

Paginated list of limits.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits_list import UsageLimitsList
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
    api_instance = saturn_api.LimitsApi(api_client)
    name = 'name_example' # str | Substring matched search string on usage limit name. (optional)
    org_id = 'org_id_example' # str | Filter usage limits by org. Defaults to the default org for the current user/group. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List limits
        api_response = await api_instance.list(name=name, org_id=org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of LimitsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LimitsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Substring matched search string on usage limit name. | [optional] 
 **org_id** | **str**| Filter usage limits by org. Defaults to the default org for the current user/group. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**UsageLimitsList**](UsageLimitsList.md)

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
> UsageLimits update(limits_id, usage_limits_update)

Update limits

Update a limits.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
from saturn_api.models.usage_limits_update import UsageLimitsUpdate
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
    api_instance = saturn_api.LimitsApi(api_client)
    limits_id = 'limits_id_example' # str | 
    usage_limits_update = saturn_api.UsageLimitsUpdate() # UsageLimitsUpdate | 

    try:
        # Update limits
        api_response = await api_instance.update(limits_id, usage_limits_update)
        print("The response of LimitsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LimitsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limits_id** | **str**|  | 
 **usage_limits_update** | [**UsageLimitsUpdate**](UsageLimitsUpdate.md)|  | 

### Return type

[**UsageLimits**](UsageLimits.md)

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


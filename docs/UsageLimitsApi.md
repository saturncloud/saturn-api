# saturn_api.UsageLimitsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UsageLimitsApi.md#create) | **POST** /api/limits | 
[**delete**](UsageLimitsApi.md#delete) | **DELETE** /api/limits/{limits_id} | 
[**get**](UsageLimitsApi.md#get) | **GET** /api/limits/{limits_id} | 
[**list**](UsageLimitsApi.md#list) | **GET** /api/limits | 
[**update**](UsageLimitsApi.md#update) | **PATCH** /api/limits/{limits_id} | 


# **create**
> Limits create(limits)

Create usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.limits import Limits
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.UsageLimitsApi(api_client)
    limits = saturn_api.Limits() # Limits | 

    try:
        api_response = await api_instance.create(limits)
        print("The response of UsageLimitsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limits** | [**Limits**](Limits.md)|  | 

### Return type

[**Limits**](Limits.md)

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

Delete usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.UsageLimitsApi(api_client)
    limits_id = 'limits_id_example' # str | 

    try:
        await api_instance.delete(limits_id)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->delete: %s\n" % e)
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
> Limits get(limits_id)

Get usage limits by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.limits import Limits
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.UsageLimitsApi(api_client)
    limits_id = 'limits_id_example' # str | 

    try:
        api_response = await api_instance.get(limits_id)
        print("The response of UsageLimitsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limits_id** | **str**|  | 

### Return type

[**Limits**](Limits.md)

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
> LimitsList list(org_id=org_id, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size)

List usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.limits_list import LimitsList
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.UsageLimitsApi(api_client)
    org_id = 'org_id_example' # str |  (optional)
    name = 'name_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 56 # int |  (optional)

    try:
        api_response = await api_instance.list(org_id=org_id, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of UsageLimitsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **org_id** | **str**|  | [optional] 
 **name** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] 

### Return type

[**LimitsList**](LimitsList.md)

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
> Limits update(limits_id, limits_patch=limits_patch)

Update usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.limits import Limits
from saturn_api.models.limits_patch import LimitsPatch
from saturn_api.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = saturn_api.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = saturn_api.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with saturn_api.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = saturn_api.UsageLimitsApi(api_client)
    limits_id = 'limits_id_example' # str | 
    limits_patch = saturn_api.LimitsPatch() # LimitsPatch |  (optional)

    try:
        api_response = await api_instance.update(limits_id, limits_patch=limits_patch)
        print("The response of UsageLimitsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limits_id** | **str**|  | 
 **limits_patch** | [**LimitsPatch**](LimitsPatch.md)|  | [optional] 

### Return type

[**Limits**](Limits.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Patched |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


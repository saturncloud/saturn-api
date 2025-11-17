# saturn_api.UsageLimitsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UsageLimitsApi.md#create) | **POST** /api/limits | 
[**delete**](UsageLimitsApi.md#delete) | **DELETE** /api/limits/{usage_limits_id} | 
[**get**](UsageLimitsApi.md#get) | **GET** /api/limits/{usage_limits_id} | 
[**list**](UsageLimitsApi.md#list) | **GET** /api/limits | 
[**update**](UsageLimitsApi.md#update) | **PATCH** /api/limits/{usage_limits_id} | 


# **create**
> UsageLimits create(usage_limits_create)

Create usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
from saturn_api.models.usage_limits_create import UsageLimitsCreate
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
    usage_limits_create = saturn_api.UsageLimitsCreate() # UsageLimitsCreate | 

    try:
        api_response = await api_instance.create(usage_limits_create)
        print("The response of UsageLimitsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->create: %s\n" % e)
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
> delete(usage_limits_id)

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
    usage_limits_id = 'usage_limits_id_example' # str | 

    try:
        await api_instance.delete(usage_limits_id)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_limits_id** | **str**|  | 

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
> UsageLimits get(usage_limits_id)

Get usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
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
    usage_limits_id = 'usage_limits_id_example' # str | 

    try:
        api_response = await api_instance.get(usage_limits_id)
        print("The response of UsageLimitsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_limits_id** | **str**|  | 

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

List usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits_list import UsageLimitsList
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
    name = 'name_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list(name=name, org_id=org_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of UsageLimitsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

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
> UsageLimits update(usage_limits_id, usage_limits_update)

Update usage limits

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.usage_limits import UsageLimits
from saturn_api.models.usage_limits_update import UsageLimitsUpdate
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
    usage_limits_id = 'usage_limits_id_example' # str | 
    usage_limits_update = saturn_api.UsageLimitsUpdate() # UsageLimitsUpdate | 

    try:
        api_response = await api_instance.update(usage_limits_id, usage_limits_update)
        print("The response of UsageLimitsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsageLimitsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usage_limits_id** | **str**|  | 
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


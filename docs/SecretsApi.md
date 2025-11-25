# saturn_api.SecretsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SecretsApi.md#create) | **POST** /api/secrets | Create secret
[**delete**](SecretsApi.md#delete) | **DELETE** /api/secrets/{secret_id} | Delete secret
[**get**](SecretsApi.md#get) | **GET** /api/secrets/{secret_id} | Get secret
[**list**](SecretsApi.md#list) | **GET** /api/secrets | List secrets
[**update**](SecretsApi.md#update) | **PATCH** /api/secrets/{secret_id} | Update secret


# **create**
> Secret create(secret_create)

Create secret

Create a new secret.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret import Secret
from saturn_api.models.secret_create import SecretCreate
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
    api_instance = saturn_api.SecretsApi(api_client)
    secret_create = saturn_api.SecretCreate() # SecretCreate | 

    try:
        # Create secret
        api_response = await api_instance.create(secret_create)
        print("The response of SecretsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SecretsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_create** | [**SecretCreate**](SecretCreate.md)|  | 

### Return type

[**Secret**](Secret.md)

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
> delete(secret_id)

Delete secret

Delete a secret.

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
    api_instance = saturn_api.SecretsApi(api_client)
    secret_id = 'secret_id_example' # str | 

    try:
        # Delete secret
        await api_instance.delete(secret_id)
    except Exception as e:
        print("Exception when calling SecretsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_id** | **str**|  | 

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
> Secret get(secret_id)

Get secret

Get a secret.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret import Secret
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
    api_instance = saturn_api.SecretsApi(api_client)
    secret_id = 'secret_id_example' # str | 

    try:
        # Get secret
        api_response = await api_instance.get(secret_id)
        print("The response of SecretsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SecretsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_id** | **str**|  | 

### Return type

[**Secret**](Secret.md)

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
> SecretList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, access=access, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List secrets

Paginated list of secrets.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_access_level import SecretAccessLevel
from saturn_api.models.secret_list import SecretList
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
    api_instance = saturn_api.SecretsApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    name = 'name_example' # str |  (optional)
    access = saturn_api.SecretAccessLevel() # SecretAccessLevel |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List secrets
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, access=access, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of SecretsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SecretsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_name** | **str**|  | [optional] 
 **owner_id** | **str**|  | [optional] 
 **user_id** | **str**|  | [optional] 
 **group_id** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **owner** | **str**|  | [optional] 
 **name** | **str**|  | [optional] 
 **access** | [**SecretAccessLevel**](.md)|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**SecretList**](SecretList.md)

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
> Secret update(secret_id, secret_update)

Update secret

Update a secret.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret import Secret
from saturn_api.models.secret_update import SecretUpdate
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
    api_instance = saturn_api.SecretsApi(api_client)
    secret_id = 'secret_id_example' # str | 
    secret_update = saturn_api.SecretUpdate() # SecretUpdate | 

    try:
        # Update secret
        api_response = await api_instance.update(secret_id, secret_update)
        print("The response of SecretsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SecretsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **secret_id** | **str**|  | 
 **secret_update** | [**SecretUpdate**](SecretUpdate.md)|  | 

### Return type

[**Secret**](Secret.md)

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


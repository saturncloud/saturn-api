# saturn_api.SshPrivateKeysApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SshPrivateKeysApi.md#create) | **POST** /api/ssh_private_keys | Create ssh private key
[**delete**](SshPrivateKeysApi.md#delete) | **DELETE** /api/ssh_private_keys/{ssh_privatekey_id} | Delete ssh private key
[**get**](SshPrivateKeysApi.md#get) | **GET** /api/ssh_private_keys/{ssh_privatekey_id} | Get ssh private key
[**list**](SshPrivateKeysApi.md#list) | **GET** /api/ssh_private_keys | List ssh private keys
[**update**](SshPrivateKeysApi.md#update) | **PATCH** /api/ssh_private_keys/{ssh_privatekey_id} | Update ssh private key


# **create**
> SSHPrivateKey create(ssh_private_key_create)

Create ssh private key

Create a new ssh private key.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_private_key import SSHPrivateKey
from saturn_api.models.ssh_private_key_create import SSHPrivateKeyCreate
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
    api_instance = saturn_api.SshPrivateKeysApi(api_client)
    ssh_private_key_create = saturn_api.SSHPrivateKeyCreate() # SSHPrivateKeyCreate | 

    try:
        # Create ssh private key
        api_response = await api_instance.create(ssh_private_key_create)
        print("The response of SshPrivateKeysApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPrivateKeysApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_private_key_create** | [**SSHPrivateKeyCreate**](SSHPrivateKeyCreate.md)|  | 

### Return type

[**SSHPrivateKey**](SSHPrivateKey.md)

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
> delete(ssh_privatekey_id)

Delete ssh private key

Delete a ssh private key.

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
    api_instance = saturn_api.SshPrivateKeysApi(api_client)
    ssh_privatekey_id = 'ssh_privatekey_id_example' # str | 

    try:
        # Delete ssh private key
        await api_instance.delete(ssh_privatekey_id)
    except Exception as e:
        print("Exception when calling SshPrivateKeysApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_privatekey_id** | **str**|  | 

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
> SSHPrivateKey get(ssh_privatekey_id)

Get ssh private key

Get a ssh private key.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_private_key import SSHPrivateKey
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
    api_instance = saturn_api.SshPrivateKeysApi(api_client)
    ssh_privatekey_id = 'ssh_privatekey_id_example' # str | 

    try:
        # Get ssh private key
        api_response = await api_instance.get(ssh_privatekey_id)
        print("The response of SshPrivateKeysApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPrivateKeysApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_privatekey_id** | **str**|  | 

### Return type

[**SSHPrivateKey**](SSHPrivateKey.md)

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
> SSHPrivateKeyList list(user_id=user_id, group_id=group_id, identity=identity, name=name, is_default=is_default, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List ssh private keys

Paginated list of ssh private keys.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_private_key_list import SSHPrivateKeyList
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
    api_instance = saturn_api.SshPrivateKeysApi(api_client)
    user_id = 'user_id_example' # str | Identity reference by user ID (optional)
    group_id = 'group_id_example' # str | Identity reference by group ID (optional)
    identity = 'identity_example' # str | Identity reference by name (optional)
    name = 'name_example' # str | Prefix matched search string on SSH private key name. (optional)
    is_default = True # bool | Filter SSH private keys by is_default. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List ssh private keys
        api_response = await api_instance.list(user_id=user_id, group_id=group_id, identity=identity, name=name, is_default=is_default, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of SshPrivateKeysApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPrivateKeysApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**| Identity reference by user ID | [optional] 
 **group_id** | **str**| Identity reference by group ID | [optional] 
 **identity** | **str**| Identity reference by name | [optional] 
 **name** | **str**| Prefix matched search string on SSH private key name. | [optional] 
 **is_default** | **bool**| Filter SSH private keys by is_default. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**SSHPrivateKeyList**](SSHPrivateKeyList.md)

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
> SSHPrivateKey update(ssh_privatekey_id, ssh_private_key_update)

Update ssh private key

Update a ssh private key.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_private_key import SSHPrivateKey
from saturn_api.models.ssh_private_key_update import SSHPrivateKeyUpdate
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
    api_instance = saturn_api.SshPrivateKeysApi(api_client)
    ssh_privatekey_id = 'ssh_privatekey_id_example' # str | 
    ssh_private_key_update = saturn_api.SSHPrivateKeyUpdate() # SSHPrivateKeyUpdate | 

    try:
        # Update ssh private key
        api_response = await api_instance.update(ssh_privatekey_id, ssh_private_key_update)
        print("The response of SshPrivateKeysApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPrivateKeysApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_privatekey_id** | **str**|  | 
 **ssh_private_key_update** | [**SSHPrivateKeyUpdate**](SSHPrivateKeyUpdate.md)|  | 

### Return type

[**SSHPrivateKey**](SSHPrivateKey.md)

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


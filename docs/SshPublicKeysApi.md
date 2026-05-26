# saturn_api.SshPublicKeysApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SshPublicKeysApi.md#create) | **POST** /api/ssh_public_keys | Create ssh public key
[**delete**](SshPublicKeysApi.md#delete) | **DELETE** /api/ssh_public_keys/{ssh_publickey_id} | Delete ssh public key
[**get**](SshPublicKeysApi.md#get) | **GET** /api/ssh_public_keys/{ssh_publickey_id} | Get ssh public key
[**list**](SshPublicKeysApi.md#list) | **GET** /api/ssh_public_keys | List ssh public keys
[**update**](SshPublicKeysApi.md#update) | **PATCH** /api/ssh_public_keys/{ssh_publickey_id} | Update ssh public key


# **create**
> SSHPublicKey create(ssh_public_key_create)

Create ssh public key

Create a new ssh public key.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_public_key import SSHPublicKey
from saturn_api.models.ssh_public_key_create import SSHPublicKeyCreate
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
    api_instance = saturn_api.SshPublicKeysApi(api_client)
    ssh_public_key_create = saturn_api.SSHPublicKeyCreate() # SSHPublicKeyCreate | 

    try:
        # Create ssh public key
        api_response = await api_instance.create(ssh_public_key_create)
        print("The response of SshPublicKeysApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPublicKeysApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_public_key_create** | [**SSHPublicKeyCreate**](SSHPublicKeyCreate.md)|  | 

### Return type

[**SSHPublicKey**](SSHPublicKey.md)

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
> delete(ssh_publickey_id)

Delete ssh public key

Delete a ssh public key.

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
    api_instance = saturn_api.SshPublicKeysApi(api_client)
    ssh_publickey_id = 'ssh_publickey_id_example' # str | 

    try:
        # Delete ssh public key
        await api_instance.delete(ssh_publickey_id)
    except Exception as e:
        print("Exception when calling SshPublicKeysApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_publickey_id** | **str**|  | 

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
> SSHPublicKey get(ssh_publickey_id)

Get ssh public key

Get a ssh public key.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_public_key import SSHPublicKey
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
    api_instance = saturn_api.SshPublicKeysApi(api_client)
    ssh_publickey_id = 'ssh_publickey_id_example' # str | 

    try:
        # Get ssh public key
        api_response = await api_instance.get(ssh_publickey_id)
        print("The response of SshPublicKeysApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPublicKeysApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_publickey_id** | **str**|  | 

### Return type

[**SSHPublicKey**](SSHPublicKey.md)

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
> SSHPublicKeyList list(user_id=user_id, group_id=group_id, identity=identity, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List ssh public keys

Paginated list of ssh public keys.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_public_key_list import SSHPublicKeyList
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
    api_instance = saturn_api.SshPublicKeysApi(api_client)
    user_id = 'user_id_example' # str | Identity reference by user ID (optional)
    group_id = 'group_id_example' # str | Identity reference by group ID (optional)
    identity = 'identity_example' # str | Identity reference by name (optional)
    name = 'name_example' # str | Substring matched search string on SSH public key name. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List ssh public keys
        api_response = await api_instance.list(user_id=user_id, group_id=group_id, identity=identity, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of SshPublicKeysApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPublicKeysApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**| Identity reference by user ID | [optional] 
 **group_id** | **str**| Identity reference by group ID | [optional] 
 **identity** | **str**| Identity reference by name | [optional] 
 **name** | **str**| Substring matched search string on SSH public key name. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**SSHPublicKeyList**](SSHPublicKeyList.md)

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
> SSHPublicKey update(ssh_publickey_id, ssh_public_key_update)

Update ssh public key

Update a ssh public key.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.ssh_public_key import SSHPublicKey
from saturn_api.models.ssh_public_key_update import SSHPublicKeyUpdate
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
    api_instance = saturn_api.SshPublicKeysApi(api_client)
    ssh_publickey_id = 'ssh_publickey_id_example' # str | 
    ssh_public_key_update = saturn_api.SSHPublicKeyUpdate() # SSHPublicKeyUpdate | 

    try:
        # Update ssh public key
        api_response = await api_instance.update(ssh_publickey_id, ssh_public_key_update)
        print("The response of SshPublicKeysApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SshPublicKeysApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ssh_publickey_id** | **str**|  | 
 **ssh_public_key_update** | [**SSHPublicKeyUpdate**](SSHPublicKeyUpdate.md)|  | 

### Return type

[**SSHPublicKey**](SSHPublicKey.md)

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


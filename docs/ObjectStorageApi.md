# saturn_api.ObjectStorageApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_upload**](ObjectStorageApi.md#cancel_upload) | **DELETE** /api/object_storage/upload/{object_storage_upload_id} | Cancel object storage upload
[**complete_upload**](ObjectStorageApi.md#complete_upload) | **POST** /api/object_storage/upload/{object_storage_upload_id} | Complete object storage upload
[**delete**](ObjectStorageApi.md#delete) | **DELETE** /api/object_storage/delete | Delete object storage
[**delete_bulk**](ObjectStorageApi.md#delete_bulk) | **DELETE** /api/object_storage/bulk_delete | Delete multiple object storage
[**download**](ObjectStorageApi.md#download) | **POST** /api/object_storage/download | Download object storage
[**download_bulk**](ObjectStorageApi.md#download_bulk) | **POST** /api/object_storage/bulk_download | Download bulk object storage
[**get_usage**](ObjectStorageApi.md#get_usage) | **GET** /api/object_storage/usage | Get object storage usage stats
[**list**](ObjectStorageApi.md#list) | **GET** /api/object_storage | List object storage
[**list_shared**](ObjectStorageApi.md#list_shared) | **GET** /api/object_storage/shared | List shared object storage
[**list_uploads**](ObjectStorageApi.md#list_uploads) | **GET** /api/object_storage/upload | List object storage uploads
[**resume_upload**](ObjectStorageApi.md#resume_upload) | **GET** /api/object_storage/upload/{object_storage_upload_id} | Resume object storage upload
[**upload**](ObjectStorageApi.md#upload) | **POST** /api/object_storage/upload | Create object storage upload


# **cancel_upload**
> cancel_upload(object_storage_upload_id)

Cancel object storage upload

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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_upload_id = 'object_storage_upload_id_example' # str | 

    try:
        # Cancel object storage upload
        await api_instance.cancel_upload(object_storage_upload_id)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->cancel_upload: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_upload_id** | **str**|  | 

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
**204** | Canceled |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **complete_upload**
> complete_upload(object_storage_upload_id, object_storage_completed_upload)

Complete object storage upload

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_completed_upload import ObjectStorageCompletedUpload
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_upload_id = 'object_storage_upload_id_example' # str | 
    object_storage_completed_upload = saturn_api.ObjectStorageCompletedUpload() # ObjectStorageCompletedUpload | 

    try:
        # Complete object storage upload
        await api_instance.complete_upload(object_storage_upload_id, object_storage_completed_upload)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->complete_upload: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_upload_id** | **str**|  | 
 **object_storage_completed_upload** | [**ObjectStorageCompletedUpload**](ObjectStorageCompletedUpload.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Completed |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> delete(object_storage_reference)

Delete object storage

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_reference import ObjectStorageReference
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_reference = saturn_api.ObjectStorageReference() # ObjectStorageReference | 

    try:
        # Delete object storage
        await api_instance.delete(object_storage_reference)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_reference** | [**ObjectStorageReference**](ObjectStorageReference.md)|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_bulk**
> ObjectStorageBulkDeleteResults delete_bulk(object_storage_bulk_reference)

Delete multiple object storage

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_bulk_delete_results import ObjectStorageBulkDeleteResults
from saturn_api.models.object_storage_bulk_reference import ObjectStorageBulkReference
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_bulk_reference = saturn_api.ObjectStorageBulkReference() # ObjectStorageBulkReference | 

    try:
        # Delete multiple object storage
        api_response = await api_instance.delete_bulk(object_storage_bulk_reference)
        print("The response of ObjectStorageApi->delete_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->delete_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_bulk_reference** | [**ObjectStorageBulkReference**](ObjectStorageBulkReference.md)|  | 

### Return type

[**ObjectStorageBulkDeleteResults**](ObjectStorageBulkDeleteResults.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Deleted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download**
> ObjectStoragePresignedDownload download(object_storage_reference)

Download object storage

Create a presigned download URL for a file.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_presigned_download import ObjectStoragePresignedDownload
from saturn_api.models.object_storage_reference import ObjectStorageReference
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_reference = saturn_api.ObjectStorageReference() # ObjectStorageReference | 

    try:
        # Download object storage
        api_response = await api_instance.download(object_storage_reference)
        print("The response of ObjectStorageApi->download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_reference** | [**ObjectStorageReference**](ObjectStorageReference.md)|  | 

### Return type

[**ObjectStoragePresignedDownload**](ObjectStoragePresignedDownload.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_bulk**
> ObjectStorageBulkDownload download_bulk(object_storage_bulk_reference)

Download bulk object storage

Create presigned download URLs for multiple files.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_bulk_download import ObjectStorageBulkDownload
from saturn_api.models.object_storage_bulk_reference import ObjectStorageBulkReference
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_bulk_reference = saturn_api.ObjectStorageBulkReference() # ObjectStorageBulkReference | 

    try:
        # Download bulk object storage
        api_response = await api_instance.download_bulk(object_storage_bulk_reference)
        print("The response of ObjectStorageApi->download_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->download_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_bulk_reference** | [**ObjectStorageBulkReference**](ObjectStorageBulkReference.md)|  | 

### Return type

[**ObjectStorageBulkDownload**](ObjectStorageBulkDownload.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_usage**
> ObjectStorageUsageStats get_usage(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner)

Get object storage usage stats

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_usage_stats import ObjectStorageUsageStats
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)

    try:
        # Get object storage usage stats
        api_response = await api_instance.get_usage(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner)
        print("The response of ObjectStorageApi->get_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->get_usage: %s\n" % e)
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

### Return type

[**ObjectStorageUsageStats**](ObjectStorageUsageStats.md)

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
> ObjectStorageList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, prefix=prefix, last_key=last_key, max_keys=max_keys, delimited=delimited)

List object storage

Paginated list of object storage.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_list import ObjectStorageList
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    prefix = '' # str |  (optional) (default to '')
    last_key = 'last_key_example' # str |  (optional)
    max_keys = 1000 # int |  (optional) (default to 1000)
    delimited = True # bool |  (optional) (default to True)

    try:
        # List object storage
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, prefix=prefix, last_key=last_key, max_keys=max_keys, delimited=delimited)
        print("The response of ObjectStorageApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->list: %s\n" % e)
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
 **prefix** | **str**|  | [optional] [default to &#39;&#39;]
 **last_key** | **str**|  | [optional] 
 **max_keys** | **int**|  | [optional] [default to 1000]
 **delimited** | **bool**|  | [optional] [default to True]

### Return type

[**ObjectStorageList**](ObjectStorageList.md)

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

# **list_shared**
> ObjectStorageSharedOwnerList list_shared(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, last_key=last_key, max_keys=max_keys)

List shared object storage

List owners that have shared object storage accessible to the given owner.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_shared_owner_list import ObjectStorageSharedOwnerList
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    last_key = 'last_key_example' # str |  (optional)
    max_keys = 1000 # int |  (optional) (default to 1000)

    try:
        # List shared object storage
        api_response = await api_instance.list_shared(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, last_key=last_key, max_keys=max_keys)
        print("The response of ObjectStorageApi->list_shared:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->list_shared: %s\n" % e)
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
 **last_key** | **str**|  | [optional] 
 **max_keys** | **int**|  | [optional] [default to 1000]

### Return type

[**ObjectStorageSharedOwnerList**](ObjectStorageSharedOwnerList.md)

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

# **list_uploads**
> ObjectStorageUploadList list_uploads(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, prefix=prefix, is_copy=is_copy)

List object storage uploads

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_upload_list import ObjectStorageUploadList
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    prefix = '' # str |  (optional) (default to '')
    is_copy = True # bool |  (optional)

    try:
        # List object storage uploads
        api_response = await api_instance.list_uploads(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, prefix=prefix, is_copy=is_copy)
        print("The response of ObjectStorageApi->list_uploads:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->list_uploads: %s\n" % e)
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
 **prefix** | **str**|  | [optional] [default to &#39;&#39;]
 **is_copy** | **bool**|  | [optional] 

### Return type

[**ObjectStorageUploadList**](ObjectStorageUploadList.md)

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

# **resume_upload**
> ObjectStoragePresignedUpload resume_upload(object_storage_upload_id, first_part=first_part, last_part=last_part, last_part_size=last_part_size)

Resume object storage upload

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_presigned_upload import ObjectStoragePresignedUpload
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_upload_id = 'object_storage_upload_id_example' # str | 
    first_part = 1 # int |  (optional) (default to 1)
    last_part = 56 # int |  (optional)
    last_part_size = 56 # int |  (optional)

    try:
        # Resume object storage upload
        api_response = await api_instance.resume_upload(object_storage_upload_id, first_part=first_part, last_part=last_part, last_part_size=last_part_size)
        print("The response of ObjectStorageApi->resume_upload:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->resume_upload: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_upload_id** | **str**|  | 
 **first_part** | **int**|  | [optional] [default to 1]
 **last_part** | **int**|  | [optional] 
 **last_part_size** | **int**|  | [optional] 

### Return type

[**ObjectStoragePresignedUpload**](ObjectStoragePresignedUpload.md)

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

# **upload**
> ObjectStoragePresignedUpload upload(object_storage_upload_create)

Create object storage upload

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.object_storage_presigned_upload import ObjectStoragePresignedUpload
from saturn_api.models.object_storage_upload_create import ObjectStorageUploadCreate
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
    api_instance = saturn_api.ObjectStorageApi(api_client)
    object_storage_upload_create = saturn_api.ObjectStorageUploadCreate() # ObjectStorageUploadCreate | 

    try:
        # Create object storage upload
        api_response = await api_instance.upload(object_storage_upload_create)
        print("The response of ObjectStorageApi->upload:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ObjectStorageApi->upload: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **object_storage_upload_create** | [**ObjectStorageUploadCreate**](ObjectStorageUploadCreate.md)|  | 

### Return type

[**ObjectStoragePresignedUpload**](ObjectStoragePresignedUpload.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


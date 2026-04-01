# saturn_api.SharedFolderAttachmentsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](SharedFolderAttachmentsApi.md#create) | **POST** /api/shared_folder_attachments | Create shared folder attachment
[**delete**](SharedFolderAttachmentsApi.md#delete) | **DELETE** /api/shared_folder_attachments/{shared_folder_attachment_id} | Delete shared folder attachment
[**get**](SharedFolderAttachmentsApi.md#get) | **GET** /api/shared_folder_attachments/{shared_folder_attachment_id} | Get shared folder attachment
[**list**](SharedFolderAttachmentsApi.md#list) | **GET** /api/shared_folder_attachments | List shared folder attachments
[**update**](SharedFolderAttachmentsApi.md#update) | **PATCH** /api/shared_folder_attachments/{shared_folder_attachment_id} | Update shared folder attachment


# **create**
> SharedFolderAttachment create(shared_folder_attachment_create)

Create shared folder attachment

Create a new shared folder attachment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder_attachment import SharedFolderAttachment
from saturn_api.models.shared_folder_attachment_create import SharedFolderAttachmentCreate
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
    api_instance = saturn_api.SharedFolderAttachmentsApi(api_client)
    shared_folder_attachment_create = saturn_api.SharedFolderAttachmentCreate() # SharedFolderAttachmentCreate | 

    try:
        # Create shared folder attachment
        api_response = await api_instance.create(shared_folder_attachment_create)
        print("The response of SharedFolderAttachmentsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFolderAttachmentsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_attachment_create** | [**SharedFolderAttachmentCreate**](SharedFolderAttachmentCreate.md)|  | 

### Return type

[**SharedFolderAttachment**](SharedFolderAttachment.md)

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
> delete(shared_folder_attachment_id)

Delete shared folder attachment

Delete a shared folder attachment.

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
    api_instance = saturn_api.SharedFolderAttachmentsApi(api_client)
    shared_folder_attachment_id = 'shared_folder_attachment_id_example' # str | 

    try:
        # Delete shared folder attachment
        await api_instance.delete(shared_folder_attachment_id)
    except Exception as e:
        print("Exception when calling SharedFolderAttachmentsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_attachment_id** | **str**|  | 

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
> SharedFolderAttachment get(shared_folder_attachment_id)

Get shared folder attachment

Get a shared folder attachment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder_attachment import SharedFolderAttachment
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
    api_instance = saturn_api.SharedFolderAttachmentsApi(api_client)
    shared_folder_attachment_id = 'shared_folder_attachment_id_example' # str | 

    try:
        # Get shared folder attachment
        api_response = await api_instance.get(shared_folder_attachment_id)
        print("The response of SharedFolderAttachmentsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFolderAttachmentsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_attachment_id** | **str**|  | 

### Return type

[**SharedFolderAttachment**](SharedFolderAttachment.md)

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
> SharedFolderAttachmentList list(job_id=job_id, deployment_id=deployment_id, workspace_id=workspace_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List shared folder attachments

Paginated list of shared folder attachments.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder_attachment_list import SharedFolderAttachmentList
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
    api_instance = saturn_api.SharedFolderAttachmentsApi(api_client)
    job_id = 'job_id_example' # str | Reference by job ID. (optional)
    deployment_id = 'deployment_id_example' # str | Reference by deployment ID. (optional)
    workspace_id = 'workspace_id_example' # str | Reference by workspace ID. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List shared folder attachments
        api_response = await api_instance.list(job_id=job_id, deployment_id=deployment_id, workspace_id=workspace_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of SharedFolderAttachmentsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFolderAttachmentsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**| Reference by job ID. | [optional] 
 **deployment_id** | **str**| Reference by deployment ID. | [optional] 
 **workspace_id** | **str**| Reference by workspace ID. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

### Return type

[**SharedFolderAttachmentList**](SharedFolderAttachmentList.md)

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
> SharedFolderAttachment update(shared_folder_attachment_id, shared_folder_attachment_update)

Update shared folder attachment

Update a shared folder attachment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.shared_folder_attachment import SharedFolderAttachment
from saturn_api.models.shared_folder_attachment_update import SharedFolderAttachmentUpdate
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
    api_instance = saturn_api.SharedFolderAttachmentsApi(api_client)
    shared_folder_attachment_id = 'shared_folder_attachment_id_example' # str | 
    shared_folder_attachment_update = saturn_api.SharedFolderAttachmentUpdate() # SharedFolderAttachmentUpdate | 

    try:
        # Update shared folder attachment
        api_response = await api_instance.update(shared_folder_attachment_id, shared_folder_attachment_update)
        print("The response of SharedFolderAttachmentsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SharedFolderAttachmentsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shared_folder_attachment_id** | **str**|  | 
 **shared_folder_attachment_update** | [**SharedFolderAttachmentUpdate**](SharedFolderAttachmentUpdate.md)|  | 

### Return type

[**SharedFolderAttachment**](SharedFolderAttachment.md)

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


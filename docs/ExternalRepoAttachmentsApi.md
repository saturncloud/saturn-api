# saturn_api.ExternalRepoAttachmentsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ExternalRepoAttachmentsApi.md#create) | **POST** /api/external_repo_attachments | 
[**delete**](ExternalRepoAttachmentsApi.md#delete) | **DELETE** /api/external_repo_attachments/{external_repo_attachment_id} | 
[**get**](ExternalRepoAttachmentsApi.md#get) | **GET** /api/external_repo_attachments/{external_repo_attachment_id} | 
[**list**](ExternalRepoAttachmentsApi.md#list) | **GET** /api/external_repo_attachments | 
[**update**](ExternalRepoAttachmentsApi.md#update) | **PATCH** /api/external_repo_attachments/{external_repo_attachment_id} | 


# **create**
> ExternalRepoAttachment create(external_repo_attachment_create)

Create external repo attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo_attachment import ExternalRepoAttachment
from saturn_api.models.external_repo_attachment_create import ExternalRepoAttachmentCreate
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
    api_instance = saturn_api.ExternalRepoAttachmentsApi(api_client)
    external_repo_attachment_create = saturn_api.ExternalRepoAttachmentCreate() # ExternalRepoAttachmentCreate | 

    try:
        api_response = await api_instance.create(external_repo_attachment_create)
        print("The response of ExternalRepoAttachmentsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalRepoAttachmentsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_attachment_create** | [**ExternalRepoAttachmentCreate**](ExternalRepoAttachmentCreate.md)|  | 

### Return type

[**ExternalRepoAttachment**](ExternalRepoAttachment.md)

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
> delete(external_repo_attachment_id)

Delete external repo attachment

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
    api_instance = saturn_api.ExternalRepoAttachmentsApi(api_client)
    external_repo_attachment_id = 'external_repo_attachment_id_example' # str | 

    try:
        await api_instance.delete(external_repo_attachment_id)
    except Exception as e:
        print("Exception when calling ExternalRepoAttachmentsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_attachment_id** | **str**|  | 

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
> ExternalRepoAttachment get(external_repo_attachment_id)

Get external repo attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo_attachment import ExternalRepoAttachment
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
    api_instance = saturn_api.ExternalRepoAttachmentsApi(api_client)
    external_repo_attachment_id = 'external_repo_attachment_id_example' # str | 

    try:
        api_response = await api_instance.get(external_repo_attachment_id)
        print("The response of ExternalRepoAttachmentsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalRepoAttachmentsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_attachment_id** | **str**|  | 

### Return type

[**ExternalRepoAttachment**](ExternalRepoAttachment.md)

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
> ExternalRepoAttachmentList list(job_id=job_id, deployment_id=deployment_id, workspace_id=workspace_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List external repo attachments

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo_attachment_list import ExternalRepoAttachmentList
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
    api_instance = saturn_api.ExternalRepoAttachmentsApi(api_client)
    job_id = 'job_id_example' # str |  (optional)
    deployment_id = 'deployment_id_example' # str |  (optional)
    workspace_id = 'workspace_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list(job_id=job_id, deployment_id=deployment_id, workspace_id=workspace_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of ExternalRepoAttachmentsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalRepoAttachmentsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **str**|  | [optional] 
 **deployment_id** | **str**|  | [optional] 
 **workspace_id** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**ExternalRepoAttachmentList**](ExternalRepoAttachmentList.md)

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
> ExternalRepoAttachment update(external_repo_attachment_id, external_repo_attachment_update)

Update external repo attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.external_repo_attachment import ExternalRepoAttachment
from saturn_api.models.external_repo_attachment_update import ExternalRepoAttachmentUpdate
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
    api_instance = saturn_api.ExternalRepoAttachmentsApi(api_client)
    external_repo_attachment_id = 'external_repo_attachment_id_example' # str | 
    external_repo_attachment_update = saturn_api.ExternalRepoAttachmentUpdate() # ExternalRepoAttachmentUpdate | 

    try:
        api_response = await api_instance.update(external_repo_attachment_id, external_repo_attachment_update)
        print("The response of ExternalRepoAttachmentsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExternalRepoAttachmentsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_repo_attachment_id** | **str**|  | 
 **external_repo_attachment_update** | [**ExternalRepoAttachmentUpdate**](ExternalRepoAttachmentUpdate.md)|  | 

### Return type

[**ExternalRepoAttachment**](ExternalRepoAttachment.md)

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


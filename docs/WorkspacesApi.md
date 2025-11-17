# saturn_api.WorkspacesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WorkspacesApi.md#create) | **POST** /api/workspaces | 
[**create_resource_template**](WorkspacesApi.md#create_resource_template) | **POST** /api/workspaces/{workspace_id}/template | 
[**create_route**](WorkspacesApi.md#create_route) | **POST** /api/workspaces/{workspace_id}/routes | 
[**create_secret_attachment**](WorkspacesApi.md#create_secret_attachment) | **POST** /api/workspaces/{workspace_id}/secrets | 
[**create_service_account_attachment**](WorkspacesApi.md#create_service_account_attachment) | **PUT** /api/workspaces/{workspace_id}/service_account | 
[**create_viewer**](WorkspacesApi.md#create_viewer) | **POST** /api/workspaces/{workspace_id}/viewers | 
[**delete**](WorkspacesApi.md#delete) | **DELETE** /api/workspaces/{workspace_id} | 
[**delete_route**](WorkspacesApi.md#delete_route) | **DELETE** /api/workspaces/{workspace_id}/routes/{route_id} | 
[**delete_secret_attachment**](WorkspacesApi.md#delete_secret_attachment) | **DELETE** /api/workspaces/{workspace_id}/secrets/{secret_attachment_id} | 
[**delete_service_account_attachment**](WorkspacesApi.md#delete_service_account_attachment) | **DELETE** /api/workspaces/{workspace_id}/service_account | 
[**delete_viewer**](WorkspacesApi.md#delete_viewer) | **DELETE** /api/workspaces/{workspace_id}/viewers/{viewer_id} | 
[**get**](WorkspacesApi.md#get) | **GET** /api/workspaces/{workspace_id} | 
[**get_cluster_history**](WorkspacesApi.md#get_cluster_history) | **GET** /api/workspaces/{workspace_id}/clusters | 
[**get_log_history**](WorkspacesApi.md#get_log_history) | **GET** /api/workspaces/{workspace_id}/logs | 
[**get_metrics**](WorkspacesApi.md#get_metrics) | **GET** /api/workspaces/{workspace_id}/metrics | 
[**get_recipe**](WorkspacesApi.md#get_recipe) | **GET** /api/workspaces/{workspace_id}/recipe | 
[**get_resource_template**](WorkspacesApi.md#get_resource_template) | **GET** /api/workspaces/{workspace_id}/template | 
[**get_route**](WorkspacesApi.md#get_route) | **GET** /api/workspaces/{workspace_id}/routes/{route_id} | 
[**get_runtime_summary**](WorkspacesApi.md#get_runtime_summary) | **GET** /api/workspaces/{workspace_id}/runtimesummary | 
[**get_secret_attachment**](WorkspacesApi.md#get_secret_attachment) | **GET** /api/workspaces/{workspace_id}/secrets/{secret_attachment_id} | 
[**get_server_options**](WorkspacesApi.md#get_server_options) | **GET** /api/workspaces/info | 
[**get_service_account_attachment**](WorkspacesApi.md#get_service_account_attachment) | **GET** /api/workspaces/{workspace_id}/service_account | 
[**get_status_history**](WorkspacesApi.md#get_status_history) | **GET** /api/workspaces/{workspace_id}/history | 
[**get_token_info**](WorkspacesApi.md#get_token_info) | **GET** /api/workspaces/{workspace_id}/token | 
[**list**](WorkspacesApi.md#list) | **GET** /api/workspaces | 
[**list_routes**](WorkspacesApi.md#list_routes) | **GET** /api/workspaces/{workspace_id}/routes | 
[**list_secret_attachments**](WorkspacesApi.md#list_secret_attachments) | **GET** /api/workspaces/{workspace_id}/secrets | 
[**list_viewers**](WorkspacesApi.md#list_viewers) | **GET** /api/workspaces/{workspace_id}/viewers | 
[**restart**](WorkspacesApi.md#restart) | **POST** /api/workspaces/{workspace_id}/restart | 
[**rotate_token**](WorkspacesApi.md#rotate_token) | **POST** /api/workspaces/{workspace_id}/token | 
[**start**](WorkspacesApi.md#start) | **POST** /api/workspaces/{workspace_id}/start | 
[**stop**](WorkspacesApi.md#stop) | **POST** /api/workspaces/{workspace_id}/stop | 
[**update**](WorkspacesApi.md#update) | **PATCH** /api/workspaces/{workspace_id} | 
[**update_resource_template**](WorkspacesApi.md#update_resource_template) | **PATCH** /api/workspaces/{workspace_id}/template | 
[**update_route**](WorkspacesApi.md#update_route) | **PATCH** /api/workspaces/{workspace_id}/routes/{route_id} | 
[**update_secret_attachment**](WorkspacesApi.md#update_secret_attachment) | **PATCH** /api/workspaces/{workspace_id}/secrets/{secret_attachment_id} | 
[**update_token**](WorkspacesApi.md#update_token) | **PATCH** /api/workspaces/{workspace_id}/token | 


# **create**
> Workspace create(workspace_create)

Create workspace

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_create import WorkspaceCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_create = saturn_api.WorkspaceCreate() # WorkspaceCreate | 

    try:
        api_response = await api_instance.create(workspace_create)
        print("The response of WorkspacesApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_create** | [**WorkspaceCreate**](WorkspaceCreate.md)|  | 

### Return type

[**Workspace**](Workspace.md)

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

# **create_resource_template**
> ResourceTemplate create_resource_template(workspace_id)

Create workspace resource template

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_template import ResourceTemplate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.create_resource_template(workspace_id)
        print("The response of WorkspacesApi->create_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ResourceTemplate**](ResourceTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_route**
> SecretAttachment create_route(workspace_id, secret_attachment_create)

Create workspace route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
from saturn_api.models.secret_attachment_create import SecretAttachmentCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_create = saturn_api.SecretAttachmentCreate() # SecretAttachmentCreate | 

    try:
        api_response = await api_instance.create_route(workspace_id, secret_attachment_create)
        print("The response of WorkspacesApi->create_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **secret_attachment_create** | [**SecretAttachmentCreate**](SecretAttachmentCreate.md)|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

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

# **create_secret_attachment**
> SecretAttachment create_secret_attachment(workspace_id, secret_attachment_create)

Create workspace secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
from saturn_api.models.secret_attachment_create import SecretAttachmentCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_create = saturn_api.SecretAttachmentCreate() # SecretAttachmentCreate | 

    try:
        api_response = await api_instance.create_secret_attachment(workspace_id, secret_attachment_create)
        print("The response of WorkspacesApi->create_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **secret_attachment_create** | [**SecretAttachmentCreate**](SecretAttachmentCreate.md)|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

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

# **create_service_account_attachment**
> ServiceAccountAttachment create_service_account_attachment(workspace_id, service_account_create_attachment)

Create workspace service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_attachment import ServiceAccountAttachment
from saturn_api.models.service_account_create_attachment import ServiceAccountCreateAttachment
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    service_account_create_attachment = saturn_api.ServiceAccountCreateAttachment() # ServiceAccountCreateAttachment | 

    try:
        api_response = await api_instance.create_service_account_attachment(workspace_id, service_account_create_attachment)
        print("The response of WorkspacesApi->create_service_account_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **service_account_create_attachment** | [**ServiceAccountCreateAttachment**](ServiceAccountCreateAttachment.md)|  | 

### Return type

[**ServiceAccountAttachment**](ServiceAccountAttachment.md)

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

# **create_viewer**
> Viewer create_viewer(workspace_id, viewer_create)

Create workspace viewer

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.viewer import Viewer
from saturn_api.models.viewer_create import ViewerCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    viewer_create = saturn_api.ViewerCreate() # ViewerCreate | 

    try:
        api_response = await api_instance.create_viewer(workspace_id, viewer_create)
        print("The response of WorkspacesApi->create_viewer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create_viewer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **viewer_create** | [**ViewerCreate**](ViewerCreate.md)|  | 

### Return type

[**Viewer**](Viewer.md)

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
> delete(workspace_id, allow_active=allow_active)

Delete workspace

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    allow_active = False # bool |  (optional) (default to False)

    try:
        await api_instance.delete(workspace_id, allow_active=allow_active)
    except Exception as e:
        print("Exception when calling WorkspacesApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **allow_active** | **bool**|  | [optional] [default to False]

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

# **delete_route**
> delete_route(workspace_id, route_id)

Delete workspace route

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
        await api_instance.delete_route(workspace_id, route_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->delete_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **route_id** | **str**|  | 

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

# **delete_secret_attachment**
> delete_secret_attachment(workspace_id, secret_attachment_id)

Delete workspace secret attachment

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        await api_instance.delete_secret_attachment(workspace_id, secret_attachment_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->delete_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **secret_attachment_id** | **str**|  | 

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

# **delete_service_account_attachment**
> delete_service_account_attachment(workspace_id)

Delete workspace service account attachment

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        await api_instance.delete_service_account_attachment(workspace_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->delete_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

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

# **delete_viewer**
> delete_viewer(workspace_id, viewer_id)

Delete workspace viewer

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    viewer_id = 'viewer_id_example' # str | 

    try:
        await api_instance.delete_viewer(workspace_id, viewer_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->delete_viewer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **viewer_id** | **str**|  | 

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
> Workspace get(workspace_id)

Get workspace

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.get(workspace_id)
        print("The response of WorkspacesApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**Workspace**](Workspace.md)

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

# **get_cluster_history**
> ResourceClusters get_cluster_history(workspace_id)

Get clusters that a workspace has run on

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_clusters import ResourceClusters
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.get_cluster_history(workspace_id)
        print("The response of WorkspacesApi->get_cluster_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_cluster_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ResourceClusters**](ResourceClusters.md)

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

# **get_log_history**
> HistoricLogs get_log_history(workspace_id, pod_name=pod_name, cluster=cluster, first_key=first_key, last_key=last_key)

Get workspace historical logs

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.historic_logs import HistoricLogs
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    pod_name = 'pod_name_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)
    first_key = 'first_key_example' # str |  (optional)
    last_key = 'last_key_example' # str |  (optional)

    try:
        api_response = await api_instance.get_log_history(workspace_id, pod_name=pod_name, cluster=cluster, first_key=first_key, last_key=last_key)
        print("The response of WorkspacesApi->get_log_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_log_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **pod_name** | **str**|  | [optional] 
 **cluster** | **str**|  | [optional] 
 **first_key** | **str**|  | [optional] 
 **last_key** | **str**|  | [optional] 

### Return type

[**HistoricLogs**](HistoricLogs.md)

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

# **get_metrics**
> Metrics get_metrics(workspace_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)

Get workspace hardware metrics

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.metrics import Metrics
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    type = 'type_example' # str |  (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    resolution = 'resolution_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)

    try:
        api_response = await api_instance.get_metrics(workspace_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)
        print("The response of WorkspacesApi->get_metrics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_metrics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **type** | **str**|  | [optional] 
 **start** | **datetime**|  | [optional] 
 **end** | **datetime**|  | [optional] 
 **resolution** | **str**|  | [optional] 
 **cluster** | **str**|  | [optional] 

### Return type

[**Metrics**](Metrics.md)

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

# **get_recipe**
> WorkspaceRecipe get_recipe(workspace_id, as_template=as_template)

Get workspace recipe

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_recipe import WorkspaceRecipe
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    as_template = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.get_recipe(workspace_id, as_template=as_template)
        print("The response of WorkspacesApi->get_recipe:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_recipe: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **as_template** | **bool**|  | [optional] [default to False]

### Return type

[**WorkspaceRecipe**](WorkspaceRecipe.md)

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

# **get_resource_template**
> ResourceTemplate get_resource_template(workspace_id)

Get workspace resource template

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_template import ResourceTemplate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.get_resource_template(workspace_id)
        print("The response of WorkspacesApi->get_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ResourceTemplate**](ResourceTemplate.md)

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

# **get_route**
> Route get_route(workspace_id, route_id)

Get workspace route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route import Route
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
        api_response = await api_instance.get_route(workspace_id, route_id)
        print("The response of WorkspacesApi->get_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **route_id** | **str**|  | 

### Return type

[**Route**](Route.md)

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

# **get_runtime_summary**
> WorkspaceRuntimeSummary get_runtime_summary(workspace_id, details=details)

Get workspace runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_runtime_summary import WorkspaceRuntimeSummary
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.get_runtime_summary(workspace_id, details=details)
        print("The response of WorkspacesApi->get_runtime_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_runtime_summary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **details** | **bool**|  | [optional] [default to False]

### Return type

[**WorkspaceRuntimeSummary**](WorkspaceRuntimeSummary.md)

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

# **get_secret_attachment**
> SecretAttachment get_secret_attachment(workspace_id, secret_attachment_id)

Get workspace secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        api_response = await api_instance.get_secret_attachment(workspace_id, secret_attachment_id)
        print("The response of WorkspacesApi->get_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **secret_attachment_id** | **str**|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

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

# **get_server_options**
> WorkspaceServerOptions get_server_options()

Get workspace server options

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_server_options import WorkspaceServerOptions
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
    api_instance = saturn_api.WorkspacesApi(api_client)

    try:
        api_response = await api_instance.get_server_options()
        print("The response of WorkspacesApi->get_server_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_server_options: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkspaceServerOptions**](WorkspaceServerOptions.md)

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

# **get_service_account_attachment**
> ServiceAccountAttachment get_service_account_attachment(workspace_id)

Get workspace service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_attachment import ServiceAccountAttachment
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.get_service_account_attachment(workspace_id)
        print("The response of WorkspacesApi->get_service_account_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ServiceAccountAttachment**](ServiceAccountAttachment.md)

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

# **get_status_history**
> ResourceHistory get_status_history(workspace_id, cluster=cluster)

Get workspace status history

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_history import ResourceHistory
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    cluster = 'cluster_example' # str |  (optional)

    try:
        api_response = await api_instance.get_status_history(workspace_id, cluster=cluster)
        print("The response of WorkspacesApi->get_status_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_status_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **cluster** | **str**|  | [optional] 

### Return type

[**ResourceHistory**](ResourceHistory.md)

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

# **get_token_info**
> ResourceTokenInfo get_token_info(workspace_id)

Get workspace resource API token info

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.get_token_info(workspace_id)
        print("The response of WorkspacesApi->get_token_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_token_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ResourceTokenInfo**](ResourceTokenInfo.md)

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
> WorkspaceList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List workspaces

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_list import WorkspaceList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    owner_name = 'owner_name_example' # str |  (optional)
    owner_id = 'owner_id_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    owner = 'owner_example' # str |  (optional)
    name = 'name_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of WorkspacesApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->list: %s\n" % e)
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
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**WorkspaceList**](WorkspaceList.md)

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

# **list_routes**
> RouteList list_routes(workspace_id, subdomain=subdomain, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List workspace routes

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route_list import RouteList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    subdomain = 'subdomain_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list_routes(workspace_id, subdomain=subdomain, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of WorkspacesApi->list_routes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->list_routes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **subdomain** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**RouteList**](RouteList.md)

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

# **list_secret_attachments**
> SecretAttachmentList list_secret_attachments(workspace_id, attachment_type=attachment_type, location=location, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List workspace secret attachments

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment_list import SecretAttachmentList
from saturn_api.models.secret_attachment_type import SecretAttachmentType
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    attachment_type = saturn_api.SecretAttachmentType() # SecretAttachmentType |  (optional)
    location = 'location_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list_secret_attachments(workspace_id, attachment_type=attachment_type, location=location, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of WorkspacesApi->list_secret_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->list_secret_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **attachment_type** | [**SecretAttachmentType**](.md)|  | [optional] 
 **location** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**SecretAttachmentList**](SecretAttachmentList.md)

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

# **list_viewers**
> ViewerList list_viewers(workspace_id, route_id=route_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List workspace viewers

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.viewer_list import ViewerList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        api_response = await api_instance.list_viewers(workspace_id, route_id=route_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of WorkspacesApi->list_viewers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->list_viewers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **route_id** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]
 **descending** | **bool**|  | [optional] [default to False]

### Return type

[**ViewerList**](ViewerList.md)

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

# **restart**
> Workspace restart(workspace_id, workspace_start=workspace_start)

Restart workspace

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_start import WorkspaceStart
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    workspace_start = saturn_api.WorkspaceStart() # WorkspaceStart |  (optional)

    try:
        api_response = await api_instance.restart(workspace_id, workspace_start=workspace_start)
        print("The response of WorkspacesApi->restart:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->restart: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **workspace_start** | [**WorkspaceStart**](WorkspaceStart.md)|  | [optional] 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Restarted |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **rotate_token**
> ResourceTokenInfo rotate_token(workspace_id)

Rotate workspace resource API token. Invalidates existing token.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.rotate_token(workspace_id)
        print("The response of WorkspacesApi->rotate_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->rotate_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ResourceTokenInfo**](ResourceTokenInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Rotated |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start**
> Workspace start(workspace_id, workspace_start=workspace_start)

Start workspace

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_start import WorkspaceStart
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    workspace_start = saturn_api.WorkspaceStart() # WorkspaceStart |  (optional)

    try:
        api_response = await api_instance.start(workspace_id, workspace_start=workspace_start)
        print("The response of WorkspacesApi->start:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->start: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **workspace_start** | [**WorkspaceStart**](WorkspaceStart.md)|  | [optional] 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop**
> Workspace stop(workspace_id)

Stop workspace

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.stop(workspace_id)
        print("The response of WorkspacesApi->stop:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**Workspace**](Workspace.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Stopped |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update**
> Workspace update(workspace_id, workspace_update)

Update workspace

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_update import WorkspaceUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    workspace_update = saturn_api.WorkspaceUpdate() # WorkspaceUpdate | 

    try:
        api_response = await api_instance.update(workspace_id, workspace_update)
        print("The response of WorkspacesApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **workspace_update** | [**WorkspaceUpdate**](WorkspaceUpdate.md)|  | 

### Return type

[**Workspace**](Workspace.md)

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

# **update_resource_template**
> ResourceTemplate update_resource_template(workspace_id)

Update workspace resource template

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_template import ResourceTemplate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        api_response = await api_instance.update_resource_template(workspace_id)
        print("The response of WorkspacesApi->update_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->update_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

### Return type

[**ResourceTemplate**](ResourceTemplate.md)

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

# **update_route**
> Route update_route(workspace_id, route_id, route_update)

Update workspace route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route import Route
from saturn_api.models.route_update import RouteUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | 
    route_update = saturn_api.RouteUpdate() # RouteUpdate | 

    try:
        api_response = await api_instance.update_route(workspace_id, route_id, route_update)
        print("The response of WorkspacesApi->update_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->update_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **route_id** | **str**|  | 
 **route_update** | [**RouteUpdate**](RouteUpdate.md)|  | 

### Return type

[**Route**](Route.md)

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

# **update_secret_attachment**
> SecretAttachment update_secret_attachment(workspace_id, secret_attachment_id, secret_attachment_update)

Update workspace secret attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment import SecretAttachment
from saturn_api.models.secret_attachment_update import SecretAttachmentUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 
    secret_attachment_update = saturn_api.SecretAttachmentUpdate() # SecretAttachmentUpdate | 

    try:
        api_response = await api_instance.update_secret_attachment(workspace_id, secret_attachment_id, secret_attachment_update)
        print("The response of WorkspacesApi->update_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->update_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **secret_attachment_id** | **str**|  | 
 **secret_attachment_update** | [**SecretAttachmentUpdate**](SecretAttachmentUpdate.md)|  | 

### Return type

[**SecretAttachment**](SecretAttachment.md)

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

# **update_token**
> ResourceTokenInfo update_token(workspace_id, resource_token_update=resource_token_update)

Update and rotate workspace resource API token. Invalidates existing token.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.models.resource_token_update import ResourceTokenUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    resource_token_update = saturn_api.ResourceTokenUpdate() # ResourceTokenUpdate |  (optional)

    try:
        api_response = await api_instance.update_token(workspace_id, resource_token_update=resource_token_update)
        print("The response of WorkspacesApi->update_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->update_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **resource_token_update** | [**ResourceTokenUpdate**](ResourceTokenUpdate.md)|  | [optional] 

### Return type

[**ResourceTokenInfo**](ResourceTokenInfo.md)

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


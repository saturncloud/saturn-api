# saturn_api.WorkspacesApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](WorkspacesApi.md#create) | **POST** /api/workspaces | Create workspace
[**create_resource_template**](WorkspacesApi.md#create_resource_template) | **POST** /api/workspaces/{workspace_id}/template | Create workspace resource template
[**create_route**](WorkspacesApi.md#create_route) | **POST** /api/workspaces/{workspace_id}/routes | Create workspace route
[**create_secret_attachment**](WorkspacesApi.md#create_secret_attachment) | **POST** /api/workspaces/{workspace_id}/secrets | Create workspace secret attachment
[**create_service_account_attachment**](WorkspacesApi.md#create_service_account_attachment) | **PUT** /api/workspaces/{workspace_id}/service_account | Create workspace service account attachment
[**create_viewer**](WorkspacesApi.md#create_viewer) | **POST** /api/workspaces/{workspace_id}/viewers | Create workspace viewer
[**delete**](WorkspacesApi.md#delete) | **DELETE** /api/workspaces/{workspace_id} | Delete workspace
[**delete_route**](WorkspacesApi.md#delete_route) | **DELETE** /api/workspaces/{workspace_id}/routes/{route_id} | Delete workspace route
[**delete_secret_attachment**](WorkspacesApi.md#delete_secret_attachment) | **DELETE** /api/workspaces/{workspace_id}/secrets/{secret_attachment_id} | Delete workspace secret attachment
[**delete_service_account_attachment**](WorkspacesApi.md#delete_service_account_attachment) | **DELETE** /api/workspaces/{workspace_id}/service_account | Delete workspace service account attachment
[**delete_viewer**](WorkspacesApi.md#delete_viewer) | **DELETE** /api/workspaces/{workspace_id}/viewers/{viewer_id} | Delete workspace viewer
[**get**](WorkspacesApi.md#get) | **GET** /api/workspaces/{workspace_id} | Get workspace
[**get_cluster_history**](WorkspacesApi.md#get_cluster_history) | **GET** /api/workspaces/{workspace_id}/clusters | Get workspace cluster history
[**get_logs**](WorkspacesApi.md#get_logs) | **GET** /api/workspaces/{workspace_id}/logs | Get workspace historical logs
[**get_metrics**](WorkspacesApi.md#get_metrics) | **GET** /api/workspaces/{workspace_id}/metrics | Get workspace metrics
[**get_pod_history**](WorkspacesApi.md#get_pod_history) | **GET** /api/workspaces/{workspace_id}/history | Get workspace pod history
[**get_recipe**](WorkspacesApi.md#get_recipe) | **GET** /api/workspaces/{workspace_id}/recipe | Get workspace recipe
[**get_resource_template**](WorkspacesApi.md#get_resource_template) | **GET** /api/workspaces/{workspace_id}/template | Get workspace resource template
[**get_route**](WorkspacesApi.md#get_route) | **GET** /api/workspaces/{workspace_id}/routes/{route_id} | Get workspace route
[**get_runtime_summary**](WorkspacesApi.md#get_runtime_summary) | **GET** /api/workspaces/{workspace_id}/runtimesummary | Get workspace runtime summary
[**get_secret_attachment**](WorkspacesApi.md#get_secret_attachment) | **GET** /api/workspaces/{workspace_id}/secrets/{secret_attachment_id} | Get workspace secret attachment
[**get_server_options**](WorkspacesApi.md#get_server_options) | **GET** /api/workspaces/info | Get workspace server options
[**get_service_account_attachment**](WorkspacesApi.md#get_service_account_attachment) | **GET** /api/workspaces/{workspace_id}/service_account | Get workspace service account attachment
[**get_token_info**](WorkspacesApi.md#get_token_info) | **GET** /api/workspaces/{workspace_id}/token | Get workspace API token info
[**list**](WorkspacesApi.md#list) | **GET** /api/workspaces | List workspaces
[**list_routes**](WorkspacesApi.md#list_routes) | **GET** /api/workspaces/{workspace_id}/routes | List workspace routes
[**list_secret_attachments**](WorkspacesApi.md#list_secret_attachments) | **GET** /api/workspaces/{workspace_id}/secrets | List workspace secret attachments
[**list_viewers**](WorkspacesApi.md#list_viewers) | **GET** /api/workspaces/{workspace_id}/viewers | List workspace viewers
[**restart**](WorkspacesApi.md#restart) | **POST** /api/workspaces/{workspace_id}/restart | Restart workspace
[**rotate_token**](WorkspacesApi.md#rotate_token) | **POST** /api/workspaces/{workspace_id}/token | Rotate workspace API token
[**start**](WorkspacesApi.md#start) | **POST** /api/workspaces/{workspace_id}/start | Start workspace
[**stop**](WorkspacesApi.md#stop) | **POST** /api/workspaces/{workspace_id}/stop | Stop workspace
[**update**](WorkspacesApi.md#update) | **PATCH** /api/workspaces/{workspace_id} | Update workspace
[**update_resource_template**](WorkspacesApi.md#update_resource_template) | **PATCH** /api/workspaces/{workspace_id}/template | Update workspace resource template
[**update_route**](WorkspacesApi.md#update_route) | **PATCH** /api/workspaces/{workspace_id}/routes/{route_id} | Update workspace route
[**update_secret_attachment**](WorkspacesApi.md#update_secret_attachment) | **PATCH** /api/workspaces/{workspace_id}/secrets/{secret_attachment_id} | Update workspace secret attachment
[**update_token**](WorkspacesApi.md#update_token) | **PATCH** /api/workspaces/{workspace_id}/token | Update workspace API token


# **create**
> Workspace create(workspace_create)

Create workspace

Create a new workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_create import WorkspaceCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_create = saturn_api.WorkspaceCreate() # WorkspaceCreate | 

    try:
        # Create workspace
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Create workspace resource template
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
> Route create_route(workspace_id, route_create)

Create workspace route

Add a new ingress route to the workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route import Route
from saturn_api.models.route_create import RouteCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_create = saturn_api.RouteCreate() # RouteCreate | 

    try:
        # Create workspace route
        api_response = await api_instance.create_route(workspace_id, route_create)
        print("The response of WorkspacesApi->create_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->create_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **route_create** | [**RouteCreate**](RouteCreate.md)|  | 

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_create = saturn_api.SecretAttachmentCreate() # SecretAttachmentCreate | 

    try:
        # Create workspace secret attachment
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    service_account_create_attachment = saturn_api.ServiceAccountCreateAttachment() # ServiceAccountCreateAttachment | 

    try:
        # Create workspace service account attachment
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

Grant a user or group access to routes on the workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.viewer import Viewer
from saturn_api.models.viewer_create import ViewerCreate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    viewer_create = saturn_api.ViewerCreate() # ViewerCreate | 

    try:
        # Create workspace viewer
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

Delete a workspace.

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    allow_active = False # bool | Force delete workspace that is currently active. (optional) (default to False)

    try:
        # Delete workspace
        await api_instance.delete(workspace_id, allow_active=allow_active)
    except Exception as e:
        print("Exception when calling WorkspacesApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **allow_active** | **bool**| Force delete workspace that is currently active. | [optional] [default to False]

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

Remove an ingress route from workspace.

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
        # Delete workspace route
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        # Delete workspace secret attachment
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Delete workspace service account attachment
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

Remove a viewer's access permissions.

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    viewer_id = 'viewer_id_example' # str | 

    try:
        # Delete workspace viewer
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

Get a workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Get workspace
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

Get workspace cluster history

Get a list of clusters that the workspace has recently run on.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_clusters import ResourceClusters
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Get workspace cluster history
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

# **get_logs**
> HistoricLogList get_logs(workspace_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

Get workspace historical logs

Historical record of logs from the resource.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.historic_log_list import HistoricLogList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    pod_name = 'pod_name_example' # str | Name of the pod to retrieve logs from. (optional)
    cluster = 'cluster_example' # str | Name of the cluster the pod lives in. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Maximum number of results per page. (optional) (default to 100)

    try:
        # Get workspace historical logs
        api_response = await api_instance.get_logs(workspace_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of WorkspacesApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **pod_name** | **str**| Name of the pod to retrieve logs from. | [optional] 
 **cluster** | **str**| Name of the cluster the pod lives in. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Maximum number of results per page. | [optional] [default to 100]

### Return type

[**HistoricLogList**](HistoricLogList.md)

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

Get workspace metrics

Hardware utilization metrics.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.metrics import Metrics
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    type = 'type_example' # str | Filter metric series by type. (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime | Start timestamp of the metrics query. (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime | End timestamp of the metrics query. (optional)
    resolution = 'resolution_example' # str | Sampling resolution of metrics points. (optional)
    cluster = 'cluster_example' # str | Cluster to query for metrics. (optional)

    try:
        # Get workspace metrics
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
 **type** | **str**| Filter metric series by type. | [optional] 
 **start** | **datetime**| Start timestamp of the metrics query. | [optional] 
 **end** | **datetime**| End timestamp of the metrics query. | [optional] 
 **resolution** | **str**| Sampling resolution of metrics points. | [optional] 
 **cluster** | **str**| Cluster to query for metrics. | [optional] 

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

# **get_pod_history**
> ResourceHistory get_pod_history(workspace_id, cluster=cluster)

Get workspace pod history

Get history of pods run for the workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_history import ResourceHistory
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    cluster = 'cluster_example' # str | Cluster to query for metrics. (optional)

    try:
        # Get workspace pod history
        api_response = await api_instance.get_pod_history(workspace_id, cluster=cluster)
        print("The response of WorkspacesApi->get_pod_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_pod_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **cluster** | **str**| Cluster to query for metrics. | [optional] 

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    as_template = False # bool |  (optional) (default to False)

    try:
        # Get workspace recipe
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Get workspace resource template
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

Get an ingress route.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route import Route
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
        # Get workspace route
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
> WorkspaceRuntimeSummary get_runtime_summary(workspace_id)

Get workspace runtime summary

Summary of the current runtime status.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_runtime_summary import WorkspaceRuntimeSummary
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Get workspace runtime summary
        api_response = await api_instance.get_runtime_summary(workspace_id)
        print("The response of WorkspacesApi->get_runtime_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_runtime_summary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        # Get workspace secret attachment
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
> WorkspaceServerInfo get_server_options()

Get workspace server options

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_server_info import WorkspaceServerInfo
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
    api_instance = saturn_api.WorkspacesApi(api_client)

    try:
        # Get workspace server options
        api_response = await api_instance.get_server_options()
        print("The response of WorkspacesApi->get_server_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->get_server_options: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkspaceServerInfo**](WorkspaceServerInfo.md)

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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Get workspace service account attachment
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

# **get_token_info**
> ResourceTokenInfo get_token_info(workspace_id)

Get workspace API token info

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Get workspace API token info
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

Paginated list of workspaces.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace_list import WorkspaceList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    owner_name = 'owner_name_example' # str | Reference owner by name. (optional)
    owner_id = 'owner_id_example' # str | Reference owner by ID. (optional)
    user_id = 'user_id_example' # str | Reference owner by user ID. (optional)
    group_id = 'group_id_example' # str | Reference owner by group ID. (optional)
    org_id = 'org_id_example' # str | Reference owner by org ID. (optional)
    owner = 'owner_example' # str | Reference owner by name. (optional)
    name = 'name_example' # str | Substring matched search string on workspace name. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List workspaces
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of WorkspacesApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_name** | **str**| Reference owner by name. | [optional] 
 **owner_id** | **str**| Reference owner by ID. | [optional] 
 **user_id** | **str**| Reference owner by user ID. | [optional] 
 **group_id** | **str**| Reference owner by group ID. | [optional] 
 **org_id** | **str**| Reference owner by org ID. | [optional] 
 **owner** | **str**| Reference owner by name. | [optional] 
 **name** | **str**| Substring matched search string on workspace name. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

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

List ingress routes on the workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route_list import RouteList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    subdomain = 'subdomain_example' # str | Substring matched search string on route subdomain. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List workspace routes
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
 **subdomain** | **str**| Substring matched search string on route subdomain. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

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
> SecretAttachmentList list_secret_attachments(workspace_id, location=location, attachment_type=attachment_type, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List workspace secret attachments

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.secret_attachment_list import SecretAttachmentList
from saturn_api.models.secret_attachment_type import SecretAttachmentType
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    location = 'location_example' # str | Substring matched search string on secret attachment location. (optional)
    attachment_type = saturn_api.SecretAttachmentType() # SecretAttachmentType | Filter secret attachments by type. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List workspace secret attachments
        api_response = await api_instance.list_secret_attachments(workspace_id, location=location, attachment_type=attachment_type, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of WorkspacesApi->list_secret_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->list_secret_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **str**|  | 
 **location** | **str**| Substring matched search string on secret attachment location. | [optional] 
 **attachment_type** | [**SecretAttachmentType**](.md)| Filter secret attachments by type. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

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

List users and groups with view permissions.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.viewer_list import ViewerList
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | Filter viewers by route ID. (optional)
    prev_key = 'prev_key_example' # str | Previous page key. (optional)
    next_key = 'next_key_example' # str | Next page key. (optional)
    page_size = 100 # int | Page size. (optional) (default to 100)
    descending = False # bool | List results in descending order. (optional) (default to False)

    try:
        # List workspace viewers
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
 **route_id** | **str**| Filter viewers by route ID. | [optional] 
 **prev_key** | **str**| Previous page key. | [optional] 
 **next_key** | **str**| Next page key. | [optional] 
 **page_size** | **int**| Page size. | [optional] [default to 100]
 **descending** | **bool**| List results in descending order. | [optional] [default to False]

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

Restart a running workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_start import WorkspaceStart
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    workspace_start = saturn_api.WorkspaceStart() # WorkspaceStart |  (optional)

    try:
        # Restart workspace
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

Rotate workspace API token

Invalidate existing API tokens for the workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Rotate workspace API token
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

Run a workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_start import WorkspaceStart
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    workspace_start = saturn_api.WorkspaceStart() # WorkspaceStart |  (optional)

    try:
        # Start workspace
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

Stop a running workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Stop workspace
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

Update a workspace.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.workspace import Workspace
from saturn_api.models.workspace_update import WorkspaceUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    workspace_update = saturn_api.WorkspaceUpdate() # WorkspaceUpdate | 

    try:
        # Update workspace
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 

    try:
        # Update workspace resource template
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

Edit the configuration of an ingress route.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route import Route
from saturn_api.models.route_update import RouteUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    route_id = 'route_id_example' # str | 
    route_update = saturn_api.RouteUpdate() # RouteUpdate | 

    try:
        # Update workspace route
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 
    secret_attachment_update = saturn_api.SecretAttachmentUpdate() # SecretAttachmentUpdate | 

    try:
        # Update workspace secret attachment
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

Update workspace API token

Update API token scope on the workspace. Invalidates existing tokens.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.resource_token_info import ResourceTokenInfo
from saturn_api.models.resource_token_update import ResourceTokenUpdate
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
    api_instance = saturn_api.WorkspacesApi(api_client)
    workspace_id = 'workspace_id_example' # str | 
    resource_token_update = saturn_api.ResourceTokenUpdate() # ResourceTokenUpdate |  (optional)

    try:
        # Update workspace API token
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


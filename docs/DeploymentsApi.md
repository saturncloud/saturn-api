# saturn_api.DeploymentsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DeploymentsApi.md#create) | **POST** /api/deployments | Create deployment
[**create_resource_template**](DeploymentsApi.md#create_resource_template) | **POST** /api/deployments/{deployment_id}/template | Create deployment resource template
[**create_route**](DeploymentsApi.md#create_route) | **POST** /api/deployments/{deployment_id}/routes | Create deployment route
[**create_secret_attachment**](DeploymentsApi.md#create_secret_attachment) | **POST** /api/deployments/{deployment_id}/secrets | Create deployment secret attachment
[**create_service_account_attachment**](DeploymentsApi.md#create_service_account_attachment) | **PUT** /api/deployments/{deployment_id}/service_account | Create deployment service account attachment
[**create_viewer**](DeploymentsApi.md#create_viewer) | **POST** /api/deployments/{deployment_id}/viewers | Create deployment viewer
[**delete**](DeploymentsApi.md#delete) | **DELETE** /api/deployments/{deployment_id} | Delete deployment
[**delete_route**](DeploymentsApi.md#delete_route) | **DELETE** /api/deployments/{deployment_id}/routes/{route_id} | Delete deployment route
[**delete_secret_attachment**](DeploymentsApi.md#delete_secret_attachment) | **DELETE** /api/deployments/{deployment_id}/secrets/{secret_attachment_id} | Delete deployment secret attachment
[**delete_service_account_attachment**](DeploymentsApi.md#delete_service_account_attachment) | **DELETE** /api/deployments/{deployment_id}/service_account | Delete deployment service account attachment
[**delete_viewer**](DeploymentsApi.md#delete_viewer) | **DELETE** /api/deployments/{deployment_id}/viewers/{viewer_id} | Delete deployment viewer
[**get**](DeploymentsApi.md#get) | **GET** /api/deployments/{deployment_id} | Get deployment
[**get_cluster_history**](DeploymentsApi.md#get_cluster_history) | **GET** /api/deployments/{deployment_id}/clusters | Get deployment cluster history
[**get_logs**](DeploymentsApi.md#get_logs) | **GET** /api/deployments/{deployment_id}/logs | Get deployment historical logs
[**get_metrics**](DeploymentsApi.md#get_metrics) | **GET** /api/deployments/{deployment_id}/metrics | Get deployment metrics
[**get_pod_history**](DeploymentsApi.md#get_pod_history) | **GET** /api/deployments/{deployment_id}/history | Get deployment pod history
[**get_recipe**](DeploymentsApi.md#get_recipe) | **GET** /api/deployments/{deployment_id}/recipe | Get deployment recipe
[**get_resource_template**](DeploymentsApi.md#get_resource_template) | **GET** /api/deployments/{deployment_id}/template | Get deployment resource template
[**get_route**](DeploymentsApi.md#get_route) | **GET** /api/deployments/{deployment_id}/routes/{route_id} | Get deployment route
[**get_runtime_summary**](DeploymentsApi.md#get_runtime_summary) | **GET** /api/deployments/{deployment_id}/runtimesummary | Get deployment runtime summary
[**get_secret_attachment**](DeploymentsApi.md#get_secret_attachment) | **GET** /api/deployments/{deployment_id}/secrets/{secret_attachment_id} | Get deployment secret attachment
[**get_server_options**](DeploymentsApi.md#get_server_options) | **GET** /api/deployments/info | Get deployment server options
[**get_service_account_attachment**](DeploymentsApi.md#get_service_account_attachment) | **GET** /api/deployments/{deployment_id}/service_account | Get deployment service account attachment
[**list**](DeploymentsApi.md#list) | **GET** /api/deployments | List deployments
[**list_routes**](DeploymentsApi.md#list_routes) | **GET** /api/deployments/{deployment_id}/routes | List deployment routes
[**list_secret_attachments**](DeploymentsApi.md#list_secret_attachments) | **GET** /api/deployments/{deployment_id}/secrets | List deployment secret attachments
[**list_viewers**](DeploymentsApi.md#list_viewers) | **GET** /api/deployments/{deployment_id}/viewers | List deployment viewers
[**restart**](DeploymentsApi.md#restart) | **POST** /api/deployments/{deployment_id}/restart | Restart deployment
[**start**](DeploymentsApi.md#start) | **POST** /api/deployments/{deployment_id}/start | Start deployment
[**stop**](DeploymentsApi.md#stop) | **POST** /api/deployments/{deployment_id}/stop | Stop deployment
[**update**](DeploymentsApi.md#update) | **PATCH** /api/deployments/{deployment_id} | Update deployment
[**update_resource_template**](DeploymentsApi.md#update_resource_template) | **PATCH** /api/deployments/{deployment_id}/template | Update deployment resource template
[**update_route**](DeploymentsApi.md#update_route) | **PATCH** /api/deployments/{deployment_id}/routes/{route_id} | Update deployment route
[**update_secret_attachment**](DeploymentsApi.md#update_secret_attachment) | **PATCH** /api/deployments/{deployment_id}/secrets/{secret_attachment_id} | Update deployment secret attachment


# **create**
> Deployment create(deployment_create)

Create deployment

Create a new deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_create import DeploymentCreate
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_create = saturn_api.DeploymentCreate() # DeploymentCreate | 

    try:
        # Create deployment
        api_response = await api_instance.create(deployment_create)
        print("The response of DeploymentsApi->create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_create** | [**DeploymentCreate**](DeploymentCreate.md)|  | 

### Return type

[**Deployment**](Deployment.md)

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
> ResourceTemplate create_resource_template(deployment_id)

Create deployment resource template

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Create deployment resource template
        api_response = await api_instance.create_resource_template(deployment_id)
        print("The response of DeploymentsApi->create_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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
> SecretAttachment create_route(deployment_id, secret_attachment_create)

Create deployment route

Add a new ingress route to the deployment.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    secret_attachment_create = saturn_api.SecretAttachmentCreate() # SecretAttachmentCreate | 

    try:
        # Create deployment route
        api_response = await api_instance.create_route(deployment_id, secret_attachment_create)
        print("The response of DeploymentsApi->create_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> SecretAttachment create_secret_attachment(deployment_id, secret_attachment_create)

Create deployment secret attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    secret_attachment_create = saturn_api.SecretAttachmentCreate() # SecretAttachmentCreate | 

    try:
        # Create deployment secret attachment
        api_response = await api_instance.create_secret_attachment(deployment_id, secret_attachment_create)
        print("The response of DeploymentsApi->create_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> ServiceAccountAttachment create_service_account_attachment(deployment_id, service_account_create_attachment)

Create deployment service account attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    service_account_create_attachment = saturn_api.ServiceAccountCreateAttachment() # ServiceAccountCreateAttachment | 

    try:
        # Create deployment service account attachment
        api_response = await api_instance.create_service_account_attachment(deployment_id, service_account_create_attachment)
        print("The response of DeploymentsApi->create_service_account_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> Viewer create_viewer(deployment_id, viewer_create)

Create deployment viewer

Grant a user or group access to routes on the deployment.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    viewer_create = saturn_api.ViewerCreate() # ViewerCreate | 

    try:
        # Create deployment viewer
        api_response = await api_instance.create_viewer(deployment_id, viewer_create)
        print("The response of DeploymentsApi->create_viewer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create_viewer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> delete(deployment_id, allow_active=allow_active)

Delete deployment

Delete a deployment.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    allow_active = False # bool |  (optional) (default to False)

    try:
        # Delete deployment
        await api_instance.delete(deployment_id, allow_active=allow_active)
    except Exception as e:
        print("Exception when calling DeploymentsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> delete_route(deployment_id, route_id)

Delete deployment route

Remove an ingress route from deployment.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
        # Delete deployment route
        await api_instance.delete_route(deployment_id, route_id)
    except Exception as e:
        print("Exception when calling DeploymentsApi->delete_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> delete_secret_attachment(deployment_id, secret_attachment_id)

Delete deployment secret attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        # Delete deployment secret attachment
        await api_instance.delete_secret_attachment(deployment_id, secret_attachment_id)
    except Exception as e:
        print("Exception when calling DeploymentsApi->delete_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> delete_service_account_attachment(deployment_id)

Delete deployment service account attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Delete deployment service account attachment
        await api_instance.delete_service_account_attachment(deployment_id)
    except Exception as e:
        print("Exception when calling DeploymentsApi->delete_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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
> delete_viewer(deployment_id, viewer_id)

Delete deployment viewer

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    viewer_id = 'viewer_id_example' # str | 

    try:
        # Delete deployment viewer
        await api_instance.delete_viewer(deployment_id, viewer_id)
    except Exception as e:
        print("Exception when calling DeploymentsApi->delete_viewer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> Deployment get(deployment_id)

Get deployment

Get a deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Get deployment
        api_response = await api_instance.get(deployment_id)
        print("The response of DeploymentsApi->get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

### Return type

[**Deployment**](Deployment.md)

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
> ResourceClusters get_cluster_history(deployment_id)

Get deployment cluster history

Get a list of clusters that the deployment has recently run on.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Get deployment cluster history
        api_response = await api_instance.get_cluster_history(deployment_id)
        print("The response of DeploymentsApi->get_cluster_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_cluster_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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
> HistoricLogList get_logs(deployment_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)

Get deployment historical logs

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    pod_name = 'pod_name_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)

    try:
        # Get deployment historical logs
        api_response = await api_instance.get_logs(deployment_id, pod_name=pod_name, cluster=cluster, prev_key=prev_key, next_key=next_key, page_size=page_size)
        print("The response of DeploymentsApi->get_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
 **pod_name** | **str**|  | [optional] 
 **cluster** | **str**|  | [optional] 
 **prev_key** | **str**|  | [optional] 
 **next_key** | **str**|  | [optional] 
 **page_size** | **int**|  | [optional] [default to 100]

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
> Metrics get_metrics(deployment_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)

Get deployment metrics

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    type = 'type_example' # str |  (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    resolution = 'resolution_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)

    try:
        # Get deployment metrics
        api_response = await api_instance.get_metrics(deployment_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)
        print("The response of DeploymentsApi->get_metrics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_metrics: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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

# **get_pod_history**
> ResourceHistory get_pod_history(deployment_id, cluster=cluster)

Get deployment pod history

Get history of pods run for the deployment.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    cluster = 'cluster_example' # str |  (optional)

    try:
        # Get deployment pod history
        api_response = await api_instance.get_pod_history(deployment_id, cluster=cluster)
        print("The response of DeploymentsApi->get_pod_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_pod_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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

# **get_recipe**
> DeploymentRecipe get_recipe(deployment_id, as_template=as_template)

Get deployment recipe

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_recipe import DeploymentRecipe
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    as_template = False # bool |  (optional) (default to False)

    try:
        # Get deployment recipe
        api_response = await api_instance.get_recipe(deployment_id, as_template=as_template)
        print("The response of DeploymentsApi->get_recipe:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_recipe: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
 **as_template** | **bool**|  | [optional] [default to False]

### Return type

[**DeploymentRecipe**](DeploymentRecipe.md)

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
> ResourceTemplate get_resource_template(deployment_id)

Get deployment resource template

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Get deployment resource template
        api_response = await api_instance.get_resource_template(deployment_id)
        print("The response of DeploymentsApi->get_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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
> Route get_route(deployment_id, route_id)

Get deployment route

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
        # Get deployment route
        api_response = await api_instance.get_route(deployment_id, route_id)
        print("The response of DeploymentsApi->get_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> DeploymentRuntimeSummary get_runtime_summary(deployment_id, details=details)

Get deployment runtime summary

Summary of the current runtime status.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_runtime_summary import DeploymentRuntimeSummary
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
        # Get deployment runtime summary
        api_response = await api_instance.get_runtime_summary(deployment_id, details=details)
        print("The response of DeploymentsApi->get_runtime_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_runtime_summary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
 **details** | **bool**|  | [optional] [default to False]

### Return type

[**DeploymentRuntimeSummary**](DeploymentRuntimeSummary.md)

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
> SecretAttachment get_secret_attachment(deployment_id, secret_attachment_id)

Get deployment secret attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 

    try:
        # Get deployment secret attachment
        api_response = await api_instance.get_secret_attachment(deployment_id, secret_attachment_id)
        print("The response of DeploymentsApi->get_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> DeploymentServerOptions get_server_options()

Get deployment server options

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_server_options import DeploymentServerOptions
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
    api_instance = saturn_api.DeploymentsApi(api_client)

    try:
        # Get deployment server options
        api_response = await api_instance.get_server_options()
        print("The response of DeploymentsApi->get_server_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_server_options: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**DeploymentServerOptions**](DeploymentServerOptions.md)

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
> ServiceAccountAttachment get_service_account_attachment(deployment_id)

Get deployment service account attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Get deployment service account attachment
        api_response = await api_instance.get_service_account_attachment(deployment_id)
        print("The response of DeploymentsApi->get_service_account_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_service_account_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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

# **list**
> DeploymentList list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List deployments

Paginated list of deployments.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_list import DeploymentList
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
    api_instance = saturn_api.DeploymentsApi(api_client)
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
        # List deployments
        api_response = await api_instance.list(owner_name=owner_name, owner_id=owner_id, user_id=user_id, group_id=group_id, org_id=org_id, owner=owner, name=name, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of DeploymentsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->list: %s\n" % e)
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

[**DeploymentList**](DeploymentList.md)

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
> RouteList list_routes(deployment_id, subdomain=subdomain, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List deployment routes

List ingress routes on the deployment.

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    subdomain = 'subdomain_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List deployment routes
        api_response = await api_instance.list_routes(deployment_id, subdomain=subdomain, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of DeploymentsApi->list_routes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->list_routes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> SecretAttachmentList list_secret_attachments(deployment_id, attachment_type=attachment_type, location=location, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List deployment secret attachments

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    attachment_type = saturn_api.SecretAttachmentType() # SecretAttachmentType |  (optional)
    location = 'location_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List deployment secret attachments
        api_response = await api_instance.list_secret_attachments(deployment_id, attachment_type=attachment_type, location=location, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of DeploymentsApi->list_secret_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->list_secret_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> ViewerList list_viewers(deployment_id, route_id=route_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)

List deployment viewers

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_id = 'route_id_example' # str |  (optional)
    prev_key = 'prev_key_example' # str |  (optional)
    next_key = 'next_key_example' # str |  (optional)
    page_size = 100 # int |  (optional) (default to 100)
    descending = False # bool |  (optional) (default to False)

    try:
        # List deployment viewers
        api_response = await api_instance.list_viewers(deployment_id, route_id=route_id, prev_key=prev_key, next_key=next_key, page_size=page_size, descending=descending)
        print("The response of DeploymentsApi->list_viewers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->list_viewers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> Deployment restart(deployment_id, deployment_start=deployment_start)

Restart deployment

Restart a running deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_start import DeploymentStart
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    deployment_start = saturn_api.DeploymentStart() # DeploymentStart |  (optional)

    try:
        # Restart deployment
        api_response = await api_instance.restart(deployment_id, deployment_start=deployment_start)
        print("The response of DeploymentsApi->restart:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->restart: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
 **deployment_start** | [**DeploymentStart**](DeploymentStart.md)|  | [optional] 

### Return type

[**Deployment**](Deployment.md)

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

# **start**
> Deployment start(deployment_id, deployment_start=deployment_start)

Start deployment

Run a deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_start import DeploymentStart
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    deployment_start = saturn_api.DeploymentStart() # DeploymentStart |  (optional)

    try:
        # Start deployment
        api_response = await api_instance.start(deployment_id, deployment_start=deployment_start)
        print("The response of DeploymentsApi->start:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->start: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
 **deployment_start** | [**DeploymentStart**](DeploymentStart.md)|  | [optional] 

### Return type

[**Deployment**](Deployment.md)

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
> Deployment stop(deployment_id)

Stop deployment

Stop a running deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Stop deployment
        api_response = await api_instance.stop(deployment_id)
        print("The response of DeploymentsApi->stop:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->stop: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

### Return type

[**Deployment**](Deployment.md)

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
> Deployment update(deployment_id, deployment_update)

Update deployment

Update a deployment.

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_update import DeploymentUpdate
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    deployment_update = saturn_api.DeploymentUpdate() # DeploymentUpdate | 

    try:
        # Update deployment
        api_response = await api_instance.update(deployment_id, deployment_update)
        print("The response of DeploymentsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
 **deployment_update** | [**DeploymentUpdate**](DeploymentUpdate.md)|  | 

### Return type

[**Deployment**](Deployment.md)

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
> ResourceTemplate update_resource_template(deployment_id)

Update deployment resource template

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        # Update deployment resource template
        api_response = await api_instance.update_resource_template(deployment_id)
        print("The response of DeploymentsApi->update_resource_template:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->update_resource_template: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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
> Route update_route(deployment_id, route_id, route_update)

Update deployment route

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_id = 'route_id_example' # str | 
    route_update = saturn_api.RouteUpdate() # RouteUpdate | 

    try:
        # Update deployment route
        api_response = await api_instance.update_route(deployment_id, route_id, route_update)
        print("The response of DeploymentsApi->update_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->update_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
> SecretAttachment update_secret_attachment(deployment_id, secret_attachment_id, secret_attachment_update)

Update deployment secret attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    secret_attachment_id = 'secret_attachment_id_example' # str | 
    secret_attachment_update = saturn_api.SecretAttachmentUpdate() # SecretAttachmentUpdate | 

    try:
        # Update deployment secret attachment
        api_response = await api_instance.update_secret_attachment(deployment_id, secret_attachment_id, secret_attachment_update)
        print("The response of DeploymentsApi->update_secret_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->update_secret_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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


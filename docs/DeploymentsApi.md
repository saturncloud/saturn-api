# saturn_api.DeploymentsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](DeploymentsApi.md#create) | **POST** /api/deployments | 
[**create_resource_template**](DeploymentsApi.md#create_resource_template) | **POST** /api/deployments/{deployment_id}/template | 
[**create_route**](DeploymentsApi.md#create_route) | **POST** /api/deployments/{deployment_id}/routes | 
[**create_service_account_attachment**](DeploymentsApi.md#create_service_account_attachment) | **PUT** /api/deployments/{deployment_id}/service_account | 
[**create_viewer**](DeploymentsApi.md#create_viewer) | **POST** /api/deployments/{deployment_id}/viewers | 
[**delete**](DeploymentsApi.md#delete) | **DELETE** /api/deployments/{deployment_id} | 
[**delete_route**](DeploymentsApi.md#delete_route) | **DELETE** /api/deployments/{deployment_id}/routes/{route_id} | 
[**delete_service_account_attachment**](DeploymentsApi.md#delete_service_account_attachment) | **DELETE** /api/deployments/{deployment_id}/service_account | 
[**delete_viewer**](DeploymentsApi.md#delete_viewer) | **DELETE** /api/deployments/{deployment_id}/viewers/{viewer_id} | 
[**get**](DeploymentsApi.md#get) | **GET** /api/deployments/{deployment_id} | 
[**get_cluster_history**](DeploymentsApi.md#get_cluster_history) | **GET** /api/deployments/{deployment_id}/clusters | 
[**get_log_history**](DeploymentsApi.md#get_log_history) | **GET** /api/deployments/{deployment_id}/logs | 
[**get_metrics**](DeploymentsApi.md#get_metrics) | **GET** /api/deployments/{deployment_id}/metrics | 
[**get_resource_template**](DeploymentsApi.md#get_resource_template) | **GET** /api/deployments/{deployment_id}/template | 
[**get_runtime_summary**](DeploymentsApi.md#get_runtime_summary) | **GET** /api/deployments/{deployment_id}/runtimesummary | 
[**get_server_options**](DeploymentsApi.md#get_server_options) | **GET** /api/deployments/info | 
[**get_service_account_attachment**](DeploymentsApi.md#get_service_account_attachment) | **GET** /api/deployments/{deployment_id}/service_account | 
[**get_status_history**](DeploymentsApi.md#get_status_history) | **GET** /api/deployments/{deployment_id}/history | 
[**get_viewers**](DeploymentsApi.md#get_viewers) | **GET** /api/deployments/{deployment_id}/viewers | 
[**list**](DeploymentsApi.md#list) | **GET** /api/deployments | 
[**list_routes**](DeploymentsApi.md#list_routes) | **GET** /api/deployments/{deployment_id}/routes | 
[**restart**](DeploymentsApi.md#restart) | **POST** /api/deployments/{deployment_id}/restart | 
[**start**](DeploymentsApi.md#start) | **POST** /api/deployments/{deployment_id}/start | 
[**stop**](DeploymentsApi.md#stop) | **POST** /api/deployments/{deployment_id}/stop | 
[**update**](DeploymentsApi.md#update) | **PATCH** /api/deployments/{deployment_id} | 
[**update_resource_template**](DeploymentsApi.md#update_resource_template) | **PATCH** /api/deployments/{deployment_id}/template | 
[**update_route**](DeploymentsApi.md#update_route) | **PUT** /api/deployments/{deployment_id}/routes/{route_id} | 


# **create**
> Deployment create(deployment_create)

Create deployment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_create import DeploymentCreate
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_create = saturn_api.DeploymentCreate() # DeploymentCreate | 

    try:
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
**200** | Created |  -  |

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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
> Route create_route(deployment_id, route_create)

Create deployment route

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.route import Route
from saturn_api.models.route_create import RouteCreate
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_create = saturn_api.RouteCreate() # RouteCreate | 

    try:
        api_response = await api_instance.create_route(deployment_id, route_create)
        print("The response of DeploymentsApi->create_route:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->create_route: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 
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
**200** | Created |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_service_account_attachment**
> ServiceAccountAttachmentSchema create_service_account_attachment(deployment_id, service_account_create_attachment)

Create deployment service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_attachment_schema import ServiceAccountAttachmentSchema
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    service_account_create_attachment = saturn_api.ServiceAccountCreateAttachment() # ServiceAccountCreateAttachment | 

    try:
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

[**ServiceAccountAttachmentSchema**](ServiceAccountAttachmentSchema.md)

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
> ViewersList create_viewer(deployment_id, viewer_create)

Create deployment viewer

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.viewer_create import ViewerCreate
from saturn_api.models.viewers_list import ViewersList
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    viewer_create = saturn_api.ViewerCreate() # ViewerCreate | 

    try:
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

[**ViewersList**](ViewersList.md)

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

# **delete**
> delete(deployment_id)

Delete deployment by ID

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        await api_instance.delete(deployment_id)
    except Exception as e:
        print("Exception when calling DeploymentsApi->delete: %s\n" % e)
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

# **delete_route**
> delete_route(deployment_id, route_id)

Delete deployment route

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_id = 'route_id_example' # str | 

    try:
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

# **delete_service_account_attachment**
> delete_service_account_attachment(deployment_id)

Delete deployment service account attachment

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    viewer_id = 'viewer_id_example' # str | 

    try:
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

Get deployment by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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

Get the names of clusters that a deployment has run on

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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

# **get_log_history**
> HistoricLogs get_log_history(deployment_id)

Get deployment historical logs

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        api_response = await api_instance.get_log_history(deployment_id)
        print("The response of DeploymentsApi->get_log_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_log_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

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
> Metrics get_metrics(deployment_id, type=type, start=start, end=end, resolution=resolution, cluster=cluster)

Get deployment hardware metrics

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    type = 'type_example' # str |  (optional)
    start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    resolution = 'resolution_example' # str |  (optional)
    cluster = 'cluster_example' # str |  (optional)

    try:
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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

# **get_runtime_summary**
> DeploymentRuntimeSummary get_runtime_summary(deployment_id, details=details)

Get deployment runtime summary

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment_runtime_summary import DeploymentRuntimeSummary
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    details = False # bool |  (optional) (default to False)

    try:
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
    api_instance = saturn_api.DeploymentsApi(api_client)

    try:
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
> ServiceAccountAttachmentSchema get_service_account_attachment(deployment_id)

Get deployment service account attachment

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.service_account_attachment_schema import ServiceAccountAttachmentSchema
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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

[**ServiceAccountAttachmentSchema**](ServiceAccountAttachmentSchema.md)

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
> ResourceHistory get_status_history(deployment_id, cluster=cluster)

Get deployment status history

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    cluster = 'cluster_example' # str |  (optional)

    try:
        api_response = await api_instance.get_status_history(deployment_id, cluster=cluster)
        print("The response of DeploymentsApi->get_status_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_status_history: %s\n" % e)
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

# **get_viewers**
> ViewersList get_viewers(deployment_id)

Get deployment viewers

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.viewers_list import ViewersList
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        api_response = await api_instance.get_viewers(deployment_id)
        print("The response of DeploymentsApi->get_viewers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->get_viewers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

### Return type

[**ViewersList**](ViewersList.md)

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
> DepoloymentsList list(owner_id=owner_id, owner_name=owner_name, user_id=user_id, group_id=group_id, org_id=org_id, include_groups=include_groups)

List deployments for a user or group

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.depoloyments_list import DepoloymentsList
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    owner_id = 'owner_id_example' # str |  (optional)
    owner_name = 'owner_name_example' # str |  (optional)
    user_id = 'user_id_example' # str |  (optional)
    group_id = 'group_id_example' # str |  (optional)
    org_id = 'org_id_example' # str |  (optional)
    include_groups = True # bool |  (optional) (default to True)

    try:
        api_response = await api_instance.list(owner_id=owner_id, owner_name=owner_name, user_id=user_id, group_id=group_id, org_id=org_id, include_groups=include_groups)
        print("The response of DeploymentsApi->list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **owner_id** | **str**|  | [optional] 
 **owner_name** | **str**|  | [optional] 
 **user_id** | **str**|  | [optional] 
 **group_id** | **str**|  | [optional] 
 **org_id** | **str**|  | [optional] 
 **include_groups** | **bool**|  | [optional] [default to True]

### Return type

[**DepoloymentsList**](DepoloymentsList.md)

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
> RoutesList list_routes(deployment_id)

List deployment routes

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.routes_list import RoutesList
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
        api_response = await api_instance.list_routes(deployment_id)
        print("The response of DeploymentsApi->list_routes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeploymentsApi->list_routes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deployment_id** | **str**|  | 

### Return type

[**RoutesList**](RoutesList.md)

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

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_start import DeploymentStart
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    deployment_start = saturn_api.DeploymentStart() # DeploymentStart |  (optional)

    try:
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

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_start import DeploymentStart
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    deployment_start = saturn_api.DeploymentStart() # DeploymentStart |  (optional)

    try:
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

Stop deployment by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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

Update deployment by ID

### Example

* Bearer Authentication (bearerAuth):

```python
import saturn_api
from saturn_api.models.deployment import Deployment
from saturn_api.models.deployment_update import DeploymentUpdate
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    deployment_update = saturn_api.DeploymentUpdate() # DeploymentUpdate | 

    try:
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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 

    try:
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
**201** | Ok |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_route**
> Route update_route(deployment_id, route_id, route_update)

Update deployment route

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
    api_instance = saturn_api.DeploymentsApi(api_client)
    deployment_id = 'deployment_id_example' # str | 
    route_id = 'route_id_example' # str | 
    route_update = saturn_api.RouteUpdate() # RouteUpdate | 

    try:
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


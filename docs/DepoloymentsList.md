# DepoloymentsList


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deployments** | [**List[Deployment]**](Deployment.md) |  | [optional] 

## Example

```python
from saturn_api.models.depoloyments_list import DepoloymentsList

# TODO update the JSON string below
json = "{}"
# create an instance of DepoloymentsList from a JSON string
depoloyments_list_instance = DepoloymentsList.from_json(json)
# print the JSON string representation of the object
print(DepoloymentsList.to_json())

# convert the object into a dict
depoloyments_list_dict = depoloyments_list_instance.to_dict()
# create an instance of DepoloymentsList from a dict
depoloyments_list_from_dict = DepoloymentsList.from_dict(depoloyments_list_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



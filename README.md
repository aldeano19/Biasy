
{  
   "profile":{  
      "post":{  
         "path":"/v3/profile",
         "summary":"Get profile"
      }
   }
}


'{ \ 
   "name": "biasy" \ 
 }' 

open('https://raw.githubusercontent.com/suchowan/watson-api-client/master/LICENSE', :ssl_verify_mode=>OpenSSL::SSL::VERIFY_NONE)
                             
{  
   "createEnvironment":{  
      "post":{  
         "path":"/v1/environments",
         "summary":"Create an environment"
      }
   },
   "listEnvironments":{  
      "get":{  
         "path":"/v1/environments",
         "summary":"List environments"
      }
   },
   "getEnvironment":{  
      "get":{  
         "path":"/v1/environments/{environment_id}",
         "summary":"Get environment info"
      }
   },
   "updateEnvironment":{  
      "put":{  
         "path":"/v1/environments/{environment_id}",
         "summary":"Update an environment"
      }
   },
   "deleteEnvironment":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}",
         "summary":"Delete environment"
      }
   },
   "testConfigurationInEnvironment":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/preview",
         "summary":"Test configuration"
      }
   },
   "createConfiguration":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/configurations",
         "summary":"Add configuration"
      }
   },
   "listConfigurations":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/configurations",
         "summary":"List configurations"
      }
   },
   "getConfiguration":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/configurations/{configuration_id}",
         "summary":"Get configuration details"
      }
   },
   "updateConfiguration":{  
      "put":{  
         "path":"/v1/environments/{environment_id}/configurations/{configuration_id}",
         "summary":"Update a configuration"
      }
   },
   "deleteConfiguration":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/configurations/{configuration_id}",
         "summary":"Delete a configuration"
      }
   },
   "createCollection":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections",
         "summary":"Create a collection"
      }
   },
   "listCollections":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections",
         "summary":"List collections"
      }
   },
   "getCollection":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}",
         "summary":"Get collection details"
      }
   },
   "updateCollection":{  
      "put":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}",
         "summary":"Update a collection"
      }
   },
   "deleteCollection":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}",
         "summary":"Delete a collection"
      }
   },
   "addDocument":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/documents",
         "summary":"Add a document"
      }
   },
   "getDocumentStatus":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/documents/{document_id}",
         "summary":"Get document details"
      }
   },
   "updateDocument":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/documents/{document_id}",
         "summary":"Update a document"
      }
   },
   "deleteDocument":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/documents/{document_id}",
         "summary":"Delete a document"
      }
   },
   "listCollectionFields":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/fields",
         "summary":"List collection fields"
      }
   },
   "query":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/query",
         "summary":"Query your collection"
      }
   },
   "queryNotices":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/notices",
         "summary":"Query system notices"
      }
   },
   "listTrainingData":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data",
         "summary":"List training data"
      }
   },
   "addTrainingData":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data",
         "summary":"Add query to training data"
      }
   },
   "deleteAllTrainingData":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data",
         "summary":"Delete all training data"
      }
   },
   "getTrainingData":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}",
         "summary":"Get details about a query"
      }
   },
   "deleteTrainingData":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}",
         "summary":"Delete a training data query"
      }
   },
   "listTrainingExamples":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}/examples",
         "summary":"List examples for a training data query"
      }
   },
   "createTrainingExample":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}/examples",
         "summary":"Add example to training data query"
      }
   },
   "deleteTrainingExample":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}/examples/{example_id}",
         "summary":"Delete example for training data query"
      }
   },
   "updateTrainingExample":{  
      "put":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}/examples/{example_id}",
         "summary":"Change label or cross reference for example"
      }
   },
   "getTrainingExample":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/training_data/{query_id}/examples/{example_id}",
         "summary":"Get details for training data example"
      }
   },
   "listFields":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/fields",
         "summary":"List fields across collections"
      }
   },
   "federatedQuery":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/query",
         "summary":"Query documents in multiple collections"
      }
   },
   "federatedQueryNotices":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/notices",
         "summary":"Query multiple collection system notices"
      }
   },
   "queryEntities":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/query_entities",
         "summary":"Knowledge Graph entity query"
      }
   },
   "queryRelations":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/query_relations",
         "summary":"Knowledge Graph relationship query"
      }
   },
   "listExpansions":{  
      "get":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/expansions",
         "summary":"Get the expansion list."
      }
   },
   "createExpansions":{  
      "post":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/expansions",
         "summary":"Create or update expansion list"
      }
   },
   "deleteExpansions":{  
      "delete":{  
         "path":"/v1/environments/{environment_id}/collections/{collection_id}/expansions",
         "summary":"Delete the expansion list"
      }
   },
   "deleteUserData":{  
      "delete":{  
         "path":"/v1/user_data",
         "summary":"Delete labeled data"
      }
   }
}
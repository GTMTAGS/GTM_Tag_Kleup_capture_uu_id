___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GTM_Tag_Kleup_capture_uu_id",
  "categories": ["AFFILIATE_MARKETING", "ATTRIBUTION","CONVERSIONS"]
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Establecer id",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Introduzca aquí su código de plantilla.
var log = require('logToConsole');
const localStorage = require('localStorage');
const getQueryParameters = require('getQueryParameters');
const gtagSet = require('gtagSet');


var clickId = getQueryParameters('uu_id');

log('clickid param=',clickId);

// Tag para almacenar uu_id
gtagSet({ 'uu_id': clickId});//Almacenar en Datalayer
localStorage.setItem('uu_id', clickId); //Almacenar en localstorage.

// Tag para el evento de conversión// ...// Variables:// ...// Nombre: uu_id// Valor: {{dataLayer.uu_id}}
log('data=',data);
log('ClickId capturate',clickId);


// Ejecute data.gtmOnSuccess cuando la etiqueta haya finalizado.
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryKeys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "uu_id"
              }
            ]
          }
        },
        {
          "key": "query",
          "value": {
            "type": 8,
            "boolean": true
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "uu_id"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "uu_id"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 1/4/2024, 11:01:05



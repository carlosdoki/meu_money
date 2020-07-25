# Readme file for TPP219 

## Client Details 
 clientID=f871e83b-e58b-4bea-bdeb-09eb1f4a3331 
 clientSecret=97070049-44ec-4419-87c4-bb1f3bed43a4 

## Organisation Details 
 orgName=TPP219 
 orgID=966d1913-7561-42b0-b77d-0e9f26c8c208 

## Software Details 
 softwareName=TPP219 
 softwareID=fcea9a5e-bf26-491d-bc10-098a1ca8a162 

## Cert KID Details 
 transportKID=-T53aTad_xjXTU8WGqvBd7GcSktFGeof9hN8alxzIVc 
 signingKID=Md9oeXb2KvISOJm00-dOP7JaUvqbg0_TzgdDIdFvEhE 

## Cert Pem Details 
 transportPEM=https://tecban-uat-us-east-1-keystore.s3.amazonaws.com/966d1913-7561-42b0-b77d-0e9f26c8c208/fcea9a5e-bf26-491d-bc10-098a1ca8a162/-T53aTad_xjXTU8WGqvBd7GcSktFGeof9hN8alxzIVc.pem 
 signingPEM=https://tecban-uat-us-east-1-keystore.s3.amazonaws.com/966d1913-7561-42b0-b77d-0e9f26c8c208/fcea9a5e-bf26-491d-bc10-098a1ca8a162/Md9oeXb2KvISOJm00-dOP7JaUvqbg0_TzgdDIdFvEhE.pem 

## Server Details 
 Well Known Endpoint=https://auth1.tecban-sandbox.o3bank.co.uk/.well-known/openid-configuration 
 Token Endpoint=https://as1.tecban-sandbox.o3bank.co.uk/token 
 Resource Endpoint=https://rs1.tecban-sandbox.o3bank.co.uk 
 Auth Endpoint=https://auth1.tecban-sandbox.o3bank.co.uk/auth 

 ## User & Account Details 
 [
  {
    "username": "team219b1u1",
    "password": "923955",
    "accounts": [
      {
        "accountNumber": "01219001001"
      },
      {
        "accountNumber": "01219001002"
      },
      {
        "accountNumber": "01219001003"
      }
    ]
  },
  {
    "username": "team219b1u2",
    "password": "234700",
    "accounts": [
      {
        "accountNumber": "01219002001"
      },
      {
        "accountNumber": "01219002002"
      },
      {
        "accountNumber": "01219002003"
      }
    ]
  },
  {
    "username": "team219b1u3",
    "password": "454819",
    "accounts": [
      {
        "accountNumber": "01219003001"
      },
      {
        "accountNumber": "01219003002"
      },
      {
        "accountNumber": "01219003003"
      }
    ]
  },
  {
    "username": "team219b1u4",
    "password": "860721",
    "accounts": [
      {
        "accountNumber": "01219004001"
      },
      {
        "accountNumber": "01219004002"
      },
      {
        "accountNumber": "01219004003"
      }
    ]
  },
  {
    "username": "team219b1u5",
    "password": "622625",
    "accounts": [
      {
        "accountNumber": "01219005001"
      },
      {
        "accountNumber": "01219005002"
      },
      {
        "accountNumber": "01219005003"
      }
    ]
  }
] 

## Tip for testing in postman 
 In postman settings - certificates tab - add the transport cert and key for the rs and token endpoints 


# Readme file for TPP219 

## Client Details 
 clientID=3e28a3fa-fda2-4ffc-a160-a5ed10b5b7df 
 clientSecret=3dee03c5-8ae9-474d-87ae-0e92b4d01c28 

## Organisation Details 
 orgName=TPP219 
 orgID=24c78b75-6490-472d-be1a-76234511cb10 

## Software Details 
 softwareName=TPP219 
 softwareID=eb665ead-f278-4c33-bffc-9d57b07b0b38 

## Cert KID Details 
 transportKID=M6SYsU2MGfLV3nbxKEVgRmlAtHPC3siefF6mHQtdkJQ 
 signingKID=5iTat0H3R1wAFd5-SPwe7jdaHsfuzEHyrNZ-BOewxLo 

## Cert Pem Details 
 transportPEM=https://tecban-uat-us-east-1-keystore.s3.amazonaws.com/24c78b75-6490-472d-be1a-76234511cb10/eb665ead-f278-4c33-bffc-9d57b07b0b38/M6SYsU2MGfLV3nbxKEVgRmlAtHPC3siefF6mHQtdkJQ.pem 
 signingPEM=https://tecban-uat-us-east-1-keystore.s3.amazonaws.com/24c78b75-6490-472d-be1a-76234511cb10/eb665ead-f278-4c33-bffc-9d57b07b0b38/5iTat0H3R1wAFd5-SPwe7jdaHsfuzEHyrNZ-BOewxLo.pem 

## Server Details 
 Well Known Endpoint=https://auth2.tecban-sandbox.o3bank.co.uk/.well-known/openid-configuration 
 Token Endpoint=https://as2.tecban-sandbox.o3bank.co.uk/token 
 Resource Endpoint=https://rs2.tecban-sandbox.o3bank.co.uk 
 Auth Endpoint=https://auth2.tecban-sandbox.o3bank.co.uk/auth 

 ## User & Account Details 
 [
  {
    "username": "team219b2u1",
    "password": "542683",
    "accounts": [
      {
        "accountNumber": "02219001001"
      },
      {
        "accountNumber": "02219001002"
      },
      {
        "accountNumber": "02219001003"
      }
    ]
  },
  {
    "username": "team219b2u2",
    "password": "400446",
    "accounts": [
      {
        "accountNumber": "02219002001"
      },
      {
        "accountNumber": "02219002002"
      },
      {
        "accountNumber": "02219002003"
      }
    ]
  },
  {
    "username": "team219b2u3",
    "password": "654454",
    "accounts": [
      {
        "accountNumber": "02219003001"
      },
      {
        "accountNumber": "02219003002"
      },
      {
        "accountNumber": "02219003003"
      }
    ]
  },
  {
    "username": "team219b2u4",
    "password": "223917",
    "accounts": [
      {
        "accountNumber": "02219004001"
      },
      {
        "accountNumber": "02219004002"
      },
      {
        "accountNumber": "02219004003"
      }
    ]
  },
  {
    "username": "team219b2u5",
    "password": "467740",
    "accounts": [
      {
        "accountNumber": "02219005001"
      },
      {
        "accountNumber": "02219005002"
      },
      {
        "accountNumber": "02219005003"
      }
    ]
  }
] 

## Tip for testing in postman 
 In postman settings - certificates tab - add the transport cert and key for the rs and token endpoints 


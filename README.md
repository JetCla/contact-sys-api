# Basic CRUD operations with contact-sys-api

This example API shows how to create Contact basic CRUD operations.
This project is a Mule REST API.

**Prerequisites**: 
- [Anypoint Studio 7.x](https://www.mulesoft.com/lp/dl/studio)
- [Maven](https://maven.apache.org/download.cgi)
- [SQL Server Express](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) or [MySQL](https://www.mysql.com/downloads/). Also you can use RDS or any other DBMS cloud service.
- [JDK 1.8 or higher](https://www.oracle.com/java/technologies/javase-downloads.html)

## Getting Started

To install this example application, run the following commands:
```bash
git clone https://github.com/JetCla/contact-sys-api.git
cd contact-sys-api
mvn clean install
```
After that you can deploy on Cloudhub the API. The API binary is on /target directory

## Configuration
### Mule Runtime
The following properties need to be configured on mule-app runtime

```bash
env=dev
anypoint.platform.config.analytics.agent.enabled=false
runtime.key=abcd#efgh123@456
```


### Database connection
The API use a Database to store all the contact information
This is configured into the property file contact-sys-api-{env}.yarn

```bash
db:
  host: "{DB_HOST}"
  port: "1433"
  user: "{DB_USER}"
  password: "{DB_PASS}"
  name: "contactDb"
```
**Note**: The password must be encrypted using the runtime.key

## API Console

[API Console](https://contact-sys-api-console.netlify.app/)

## Testing
[Postman Collection](https://contact-sys-api-console.netlify.app/Contact%20Management.postman_collection.json)

## Demo
API Url: https://contact-sys-api-claudio.us-e2.cloudhub.io
API Console: https://contact-sys-api-claudio.us-e2.cloudhub.io/console/


## License

Apache 2.0, see [LICENSE](LICENSE).

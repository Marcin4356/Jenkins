# Jenkins CI/CD

A hands-on Jenkins pipeline project demonstrating automated build, test, artifact handling, container publishing, and deployment.

## Pipeline

The main Jenkins pipeline is defined in `pipeline/Jenkinsfile` and contains four stages:

1. Build
2. Test
3. Push
4. Deploy

The build stage packages a Java application with Maven and archives the generated JAR artifact. The test stage executes the test suite and publishes JUnit reports.

The later stages handle publishing and deployment using shell scripts from the repository.

## Technologies

- Jenkins
- Jenkins Pipeline
- Maven
- Java
- Docker
- Shell scripting
- JUnit

## Pipeline flow

```text
Source code
    |
  Build
    |
  Test
    |
  Push
    |
 Deploy
```

The repository is a practical CI/CD lab focused on Jenkins pipeline automation and integrating build, test, and deployment stages.

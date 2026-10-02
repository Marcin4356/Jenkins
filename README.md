# Jenkins CI/CD Pipeline

A Jenkins pipeline lab that automates the build, test, artifact archiving, image publishing and deployment of a Java application.

## Pipeline

The pipeline in pipeline/Jenkinsfile contains four stages:

```text
Build
  |
  v
Test
  |
  v
Push
  |
  v
Deploy
```

### Build

The build stage runs Maven inside a Docker container and then executes the repository build script.

The generated JAR files are archived by Jenkins with fingerprinting enabled.

### Test

The test stage runs Maven tests using a separate Docker-based Maven environment.

JUnit XML reports are published with the Jenkins JUnit publisher.

### Push

The pipeline executes jenkins/push/push.sh to publish the built image/artifact.

The Jenkins environment uses a credential named registry-pass for registry authentication.

### Deploy

The deployment stage executes jenkins/deploy/deploy.sh.

## Technologies

- Jenkins Pipeline
- Java
- Maven
- Docker
- JUnit
- Shell scripting

## Repository structure

```
pipeline/
├── Jenkinsfile
└── jenkins/
    ├── build/
    ├── test/
    ├── push/
    └── deploy/
```

The project demonstrates how build, test, artifact management and deployment steps can be combined into one Jenkins pipeline.

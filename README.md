# 🤖 API and Microservices Testing with Robot Framework

Study project focused on **API and microservices test automation using Robot Framework and Python**.

The repository was created during the **Robot API Expert** course by QA Ninja and explores REST API testing, database interactions, messaging with RabbitMQ, reusable Robot Framework resources, and automated backend validation.

> ⚠️ **Project Status**
>
> This is an older study project and uses framework and dependency versions from the period when it was created.
>
> The repository is maintained as part of my QA automation portfolio and technical learning history.

## 🛠 Tech Stack

- Robot Framework
- Python 3.9
- REST API testing
- RabbitMQ
- Database validation
- Node.js
- VS Code

## 🎯 Project Purpose

The main goal of this project was to practice automated testing of APIs and microservices beyond simple HTTP response validation.

Topics explored include:

- REST API automation
- HTTP methods
- Request and response validation
- Test data management
- Reusable Robot Framework keywords
- Database interactions
- Messaging with RabbitMQ
- Backend service validation
- Test setup and teardown
- Resource organization

## 📁 Project Structure

```text
TestAPIAndMicroServicoWithRobotFramework/
├── resources/
│   ├── factories/
│   ├── base.robot
│   ├── database.robot
│   ├── helpers.robot
│   ├── rabbitmq.robot
│   └── services.robot
│
├── tests/
│   ├── get.robot
│   ├── post.robot
│   ├── put.robot
│   └── delete.robot
│
├── logs/
├── icon.png
└── README.md
```

## 🧪 API Test Coverage

The automated test suite is organized by HTTP operation.

### GET

```text
tests/get.robot
```

Contains scenarios focused on retrieving resources and validating API responses.

### POST

```text
tests/post.robot
```

Contains scenarios for creating resources and validating request and response behavior.

### PUT

```text
tests/put.robot
```

Covers update operations and validations after modifying existing resources.

### DELETE

```text
tests/delete.robot
```

Contains scenarios focused on resource deletion and its expected API behavior.

## 🧩 Reusable Resources

The automation project separates reusable functionality from test scenarios.

### `base.robot`

Contains shared configuration and base resources used across the automation suite.

### `services.robot`

Centralizes keywords related to API/service interactions.

### `database.robot`

Contains reusable keywords for database interaction and validation.

### `rabbitmq.robot`

Provides automation support for RabbitMQ messaging scenarios.

### `helpers.robot`

Contains helper keywords reused throughout the tests.

### `factories/`

Used to organize test data creation and reusable data factories.

This structure helps reduce duplication and keeps the test scenarios focused on business behavior.

## 🐇 RabbitMQ

One of the most interesting aspects of this project is the use of **RabbitMQ**.

Instead of validating only synchronous REST requests, the project also explores concepts related to asynchronous communication and message-based architectures.

This provides practical exposure to testing environments where microservices communicate through message queues.

## 🗄 Database Validation

The project also includes database-related Robot Framework resources.

This allows test scenarios to validate not only HTTP responses but also the resulting application state at the persistence layer.

## ⚙️ Environment Setup

The original project was developed using:

```text
Python 3.9
Robot Framework 4
Node.js 16 LTS
```

Install Robot Framework:

```bash
pip install robotframework
```

Additional libraries may be required depending on the API, database, and RabbitMQ integrations used by the project.

## ▶️ Running the Tests

Execute all Robot Framework tests:

```bash
robot tests
```

Run a specific test suite:

```bash
robot tests/get.robot
```

Robot Framework generates execution reports and logs automatically.

## 📊 Test Reports

Robot Framework generates artifacts such as:

- `report.html`
- `log.html`
- `output.xml`

These reports provide detailed information about test execution, keyword calls, failures, and results.

## 🧠 What This Project Demonstrates

This repository demonstrates experience with several backend testing concepts:

- API automation
- REST services
- Microservices testing
- HTTP request validation
- Database validation
- RabbitMQ messaging
- Reusable automation architecture
- Test data factories
- Robot Framework resource files
- Automated reporting

## 📚 Learning Context

This project was created during the **Robot API Expert** course by QA Ninja.

It represents an important stage of my learning path in backend test automation because it goes beyond basic REST API validation and introduces concepts such as **databases, message queues, reusable service layers, and microservice testing**.

## 📌 Project Status

This repository is maintained as a **study and reference project**.

Some dependencies and environment requirements may need updates to run with current versions of Python, Robot Framework, RabbitMQ, or related libraries.

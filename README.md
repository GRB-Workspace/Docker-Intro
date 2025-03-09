<a id="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/GRB-Workspace/Docker-Intro.git">
    <img src="/assets/docker-logo.svg" alt="Docker Intro Logo" width="90" height="90">
  </a>

<h2 align="center">Docker Intro</h2>

  <p align="center">
    This project demonstrates a sample Docker container build and run configuration for a Spring Boot REST application. Using OpenJDK 17, Maven, and a custom Dockerfile, it serves as an example for containerizing Java applications.
    <br />
    <a href="https://github.com/GRB-Workspace/Docker-Intro/tree/main/src"><strong>Explore the repository »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/GRB-Workspace/Docker-Intro/issues/new?labels=bug">Report Bug</a>
    ·
    <a href="https://github.com/GRB-Workspace/Docker-Intro/issues/new?labels=enhancement">Request Feature</a>
  </p>
</div>

---

<!-- NOTES SECTION -->
<div align="center">
  <h3>Notes</h3>
  <p>
    For additional insights on the Docker configurations and more, please refer to the following handwritten notes:
    <br />
    <a href="https://drive.google.com/file/d/1fdHU2bvU__scz4XPNu1cQ2Kcekw_cdPD/view?usp=sharing" target="_blank">
      Handwritten Docker &amp; Azure VM Setup Note
    </a>
    <br />
    <a href="https://drive.google.com/file/d/1SLsdzIpyH1SqZNftZho_9TO-mavyjWsZ/view?usp=sharing" target="_blank">
      Handwritten LoadBalancing and Kubernetes Intro Note
    </a>
  </p>
</div>

---

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <ul>
      <li><a href="#core-features">Core Features</a></li>
      <li><a href="#built-with">Built With</a></li>
    </ul>
    <li><a href="#getting-started">Getting Started</a></li>
    <ul>
      <li><a href="#prerequisites">Prerequisites</a></li>
      <li><a href="#installation-and-setup">Installation and Setup</a></li>
      <li><a href="#docker-usage">Docker Usage</a></li>
    </ul>
    <li><a href="#project-structure">Project Structure</a></li>
    <li><a href="#documentation">Documentation</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

---

## About The Project

**Docker Intro Sample Project** is a demonstration of containerizing a Spring Boot REST application using Docker. The project includes:

- A **Dockerfile** that builds an image based on OpenJDK 17.
- A sample Spring Boot REST controller that exposes a simple endpoint.
- Maven build configurations where the final JAR name is customized using `<finalName>Hello</finalName>` in the pom.xml.

This project is designed to help developers quickly learn how to build, package, and run Docker containers for Java applications in a professional and scalable manner.

### Core Features

- **Containerization with Docker**  
  Utilizes a Dockerfile to package the application into a lightweight container.

- **Spring Boot REST Controller**  
  Provides a sample endpoint to verify Docker container functionality:

  ```java
  @RestController
  public class DockerTestController {
      @GetMapping("/docker")
      public String getDocker() {
          return "Docker Test Successful!";
      }
  }
  ```

- **Maven Build Process**  
  Demonstrates a Maven-based build process with custom JAR naming for consistency in deployments.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Built With

- **Java 17** – Utilized via the OpenJDK 17 base image.
- **Spring Boot** – Framework for building the REST controller.
- **Maven** – Build and dependency management tool.
- **Docker** – Containerization platform.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Getting Started

Follow these instructions to set up and run the Docker Intro Sample Project on your local machine.

### Prerequisites

- **Java JDK 17** or later.
- **Maven** (ensure you have Maven installed and configured).
- **Docker** – Installed and running on your system.
- **IntelliJ IDEA** (or your preferred IDE).

### Installation and Setup

1. **Clone the repository:**

   ```bash
   git clone https://github.com/GRB-Workspace/Docker-Intro.git
   cd Docker-Intro
   ```

2. **Open the project in IntelliJ IDEA.**

3. **Clean and Package the Project:**

   Open your terminal in the project root and run:

   ```bash
   mvn clean
   mvn package
   ```

   This will clean your project and package your Spring Boot application into a JAR file (named `Hello.jar` as defined in your pom.xml).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Docker Usage

The project includes a Dockerfile with the following configuration:

```dockerfile
# Use OpenJDK 17 as base image
FROM openjdk:17-jdk-slim

# Add application JAR file to the container
ADD target/Hello.jar app.jar

# Expose the port that the application will run on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
```

### Building and Running the Docker Image

1. **Build the Docker image:**

   ```bash
   docker build -t docker-intro .
   ```

2. **Run the Docker container:**

   ```bash
   docker run -p 8080:8080 docker-intro
   ```

3. **Test the application:**

   Open your web browser or use cURL/Postman to access the endpoint:

   ```
   http://localhost:8080/docker
   ```

   You should receive the following response:

   ```
   Docker Test Successful!
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Project Structure

```plaintext
Docker-Intro/
├── src/
│   └── main/
│       ├── java/
│       │   └── me.grbulegoda.dockerintro/
│       │       └── DockerTestController.java
│       └── resources/
│           └── application.properties
├── target/
│   └── Hello.jar
├── Dockerfile
├── pom.xml
└── README.md
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Documentation

For an in-depth explanation of the Docker configurations and best practices, please refer to my detailed guide on Medium:

- [Mastering Docker: A Professional Guide to Scalable Containerization](https://medium.com/@grbulegoda/mastering-docker-a-professional-guide-to-scalable-containerization-e8d1d9b99f65)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contributing

Contributions are welcome! If you have suggestions for improvements, bug fixes, or new features, please fork the repository and create a pull request. For any issues, feel free to open an issue on GitHub.

---

## License

Distributed under the **MIT License**. See the [LICENSE](LICENSE) file for details.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

## Contact

Gayanuka Bulegoda  
[Portfolio](https://grbulegoda.me/) • [GitHub](https://github.com/gayanukabulegoda)

---

<div align="center">
  <p>
    &copy; 2025 Gayanuka Bulegoda
  </p>
</div>

---

[grb-shield]: https://img.shields.io/badge/GRB-000000?style=for-the-badge&logo=github&logoColor=white
[grb-url]: https://grbulegoda.me/
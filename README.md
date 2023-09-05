# Portfolio Website on Azure

## Description
A personal portfolio website showcasing projects and skills, built using React and deployed on Azure using Docker and Kubernetes.

## Features
- Interactive UI with a responsive design.
- Dynamic content loading.
- Integration with Azure services for scalability and reliability.

## Getting Started with Docker and Docker Compose

### Prerequisites
- Install Docker and Docker Compose.

### Steps to Run the Application

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/portfolio-website.git
    ```

2. Navigate to the project directory:
    ```bash
    cd portfolio-website
    ```

3. Run the application using Docker Compose:
    ```bash
    docker-compose up -d
    ```

4. Access the application by navigating to `http://localhost:3000` in your browser.

## Technical Choices

- **Framework**: Chose React for its component-based architecture, which allows for reusable components and a more organized codebase.
- **Styling**: TailwindCSS, a utility-first CSS framework, has been used for styling the components, ensuring a responsive and modern design.
- **Icons**: react-icons library is utilized for scalable vector icons.
- **Animations**: The website features animations achieved using the framer-motion library.
- **Tools and Libraries**: Used Docker for containerization, ensuring that the application runs consistently across different environments. Docker Compose was used for defining and running the application stack.

## Azure Implementation

### Scalability and Cost Management

- **Azure Kubernetes Service (AKS)**: Chose AKS for its managed Kubernetes capabilities. It allows for easy scaling of applications, managing and monitoring containerized applications.
  
- **Azure Container Registry (ACR)**: Used ACR to store and manage Docker container images. Integrated ACR with AKS for seamless deployments.

### Azure Services Used

- Azure Kubernetes Service (AKS)
- Azure Container Registry (ACR)

## Reliability and Availability

Chose the standard tier for AKS which provides 99.95% uptime. This ensures that the application remains robust and available to users. Additionally, periodic backups and health checks are implemented for added reliability.

---

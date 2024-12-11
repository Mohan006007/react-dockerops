# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

The page will reload when you make changes.\
You may also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can't go back!**

If you aren't satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you're on your own.

You don't have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn't feel obligated to use this feature. However we understand that this tool wouldn't be useful if you couldn't customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: [https://facebook.github.io/create-react-app/docs/code-splitting](https://facebook.github.io/create-react-app/docs/code-splitting)

### Analyzing the Bundle Size

This section has moved here: [https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size](https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size)

### Making a Progressive Web App

This section has moved here: [https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app](https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app)

### Advanced Configuration

This section has moved here: [https://facebook.github.io/create-react-app/docs/advanced-configuration](https://facebook.github.io/create-react-app/docs/advanced-configuration)

### Deployment

This section has moved here: [https://facebook.github.io/create-react-app/docs/deployment](https://facebook.github.io/create-react-app/docs/deployment)

### `npm run build` fails to minify

This section has moved here: [https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify](https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify)

---

## React DockerOps - CI/CD Pipeline

A streamlined CI/CD pipeline for deploying a React application with Docker, Jenkins, and GitHub Webhooks for automated build and deployment.

---

### Prerequisites

- **AWS EC2 Instance**: Minimum `t2.medium` instance type recommended.
- **Operating System**: Ubuntu 24.04 (recommended to use Ubuntu 22.04 for error-free operation).
- **Docker**, **Jenkins**, and **Java (OpenJDK 17)** should be installed.

---

### Setup Instructions

#### 1. Install Prerequisites with `script.sh`

Run the `script.sh` to automatically install all necessary dependencies:

```bash
chmod +x script.sh
./script.sh
```

This script will:
- Update package lists
- Install Java 17 (required for Jenkins)
- Install Docker (for containerization)
- Install Jenkins (for CI/CD automation)
- Enable and start the Docker and Jenkins services
 #### 2. Clone the Repository

 Clone the repository to your local machine:
 ```bash
git clone https://github.com/Mohan006007/react-dockerops.git
cd react-dockerops
```
Since node_modules are already part of the project or will be installed when needed, you don't need to install Node.js manually.

#### 3. Build and Push Docker Image with build.sh
Use the build.sh script to:
- Login to DockerHub
- Build the Docker image
- Push the image to DockerHub
  ```bash
  git clone https://github.com/Mohan006007/react-dockerops.git
  cd react-dockerops
  ```
#### 4. Configure Jenkins Pipeline
- Set up a Jenkins pipeline by creating a job that uses the provided Jenkinsfile.
- Configure GitHub Webhooks to trigger the Jenkins build automatically when changes are pushed to the repository.

#### 5. Access the React Application
Once the Docker container is running, access the React app at http://<your-ec2-ip>:80.

#### DockerHub Image
- Image: mohan006007/react-app
  
#### Conclusion
This setup automates the build and deployment of a React app using Docker and Jenkins, with automatic SCM-triggered builds via GitHub Webhooks. It’s optimized for performance with a minimum t2.medium instance and Ubuntu 22.04 for error-free operation.

import React from "react";
import "./App.css"; // Import custom styles

function App() {
  return (
    <div style={{ textAlign: "center", backgroundColor: "#222", color: "white", height: "100vh" }}>
      <header style={{ padding: "20px" }}>
        <img
          src="https://upload.wikimedia.org/wikipedia/commons/a/a7/React-icon.svg"
          alt="React Logo"
          style={{ width: "100px" }}
        />
        <h1>Most famous DevOps Tools:</h1>
        <div style={{ marginTop: "20px" }}>
          <a href="https://git-scm.com/" style={{ color: "blue", margin: "0 15px" }}>Git</a>
          <a href="https://www.jenkins.io/" style={{ color: "blue", margin: "0 15px" }}>Jenkins</a>
          <a href="https://www.docker.com/" style={{ color: "blue", margin: "0 15px" }}>Docker</a>
          <a href="https://kubernetes.io/" style={{ color: "blue", margin: "0 15px" }}>Kubernetes</a>
        </div>
      </header>
    </div>
  );
}

export default App;


# Project Archimedes (TASCP)

Project Archimedes is a robust, dynamic Intrusion Detection System (IDS) built to protect deep neural network models from adversarial machine learning attacks in real-time. By utilizing stateful trajectory analysis, the system detects and mitigates adversarial activity before it can impact the classification pipeline.

## 🚀 Key Features

*   **Real-time Adversarial Detection**: Actively monitors incoming network telemetry to identify adversarial probing and evasion attempts.
*   **Dynamic Defense Mechanisms**: Employs non-stationary constraint mapping to shift defensive boundaries based on observed attack trajectories.
*   **High Performance**: Designed for production SOC environments with sub-millisecond overhead. The core state management is handled by a natively compiled Rust memory sentinel.
*   **Modern Stack**: Features a full-stack architecture with a FastAPI/PyTorch backend, Rust telemetry module, and a Next.js 15 frontend.

## 🏗️ Architecture

The project is divided into three main components:

1.  **Backend (`/backend`)**: A Python-based deep learning inference engine using FastAPI and PyTorch. It handles the core classification models and processes incoming telemetry.
2.  **DevTrace (`/devtrace`)**: A high-performance, native Rust module that manages stateful inference trajectories and calculates dynamic defensive thresholds in shared memory.
3.  **Frontend (`/frontend`)**: A Next.js web application styled with Tailwind CSS v4 to provide a user-friendly dashboard for monitoring system activity and alerts.

## 🛠️ Getting Started

### Prerequisites

Ensure you have the following installed:
*   Python 3.9+
*   Rust (Cargo)
*   Node.js 18+ and npm
*   Git

### Installation & Setup

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/pd241008/ProjectArchimedes.git
    cd ProjectArchimedes
    ```

2.  **Run the automated setup:**
    The provided Makefile will automatically set up the Python virtual environment, install backend dependencies, and install the frontend Node modules.
    ```bash
    make setup
    ```

3.  **Build the DevTrace module:**
    ```bash
    make build-devtrace
    ```

### Running the Services

The services can be started independently via the `Makefile`:

*   **Start the Backend Engine (FastAPI):**
    ```bash
    make run-backend
    ```
    *The API will be available at http://localhost:8000*

*   **Start the Frontend Dashboard (Next.js):**
    ```bash
    make run-frontend
    ```
    *The UI will be available at http://localhost:3000*

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

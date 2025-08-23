# Flask Machine Learning App with Azure CI/CD

## Overview

This project is a simple **Flask** web application that runs a **Machine Learning** model to predict a numeric value based on input data.
It is deployed on **Azure App Service** with **Continuous Integration (CI)** through **GitHub Actions**, and an attempted setup of **Continuous Delivery (CD)** via **Azure Pipelines**.

---

## Architectural Diagram

*Diagram showing the flow: User → GitHub → GitHub Actions (CI) → Azure App Service → Prediction Output.*

---

## How to Run Locally

1. **Clone the repository**

   ```bash
   git clone [<repo-link>](https://github.com/HssahSaad/cloud-ci-scaffold.git)
   cd flask-sklearn
   ```

2. **Install dependencies**

   ```bash
   pip install -r requirements.txt
   ```

3. **Run the application**

   ```bash
   python app.py
   ```

4. **Access the app in your browser**

   ```
   http://localhost:5000
   ```

---

## Deployment to Azure

* **Platform:** Azure App Service
* **Continuous Integration:** Implemented via **GitHub Actions** (tests + linting run automatically on every push).
* **Continuous Delivery:** 
---

## Testing the Prediction Script

1. Open **Azure Cloud Shell**

2. Run the prediction script:

   ```bash
   bash make_predict_azure_app.sh
   ```

3. **Example output:**

   ```json
   {"prediction": [2.431574790057212]}
   ```

---

## Project Plan & Estimates

* **Trello Board:** \[[Click here](https://trello.com/invite/b/689a136c34656571fde845fd/ATTIe8f6b1b34a5bd94d14f99d3ae0102ee5D152062E/website-development-project-plan)]
* **Project Plan Spreadsheet:** [\[[Click here](https://docs.google.com/spreadsheets/d/1oMJ55Bxuj8_HigrxktKnxtXbc5A3XjuH-ogmMRxz7ww/edit?usp=sharing)]
---
## future improvements

In the future, this project could be improved by integrating automated model retraining using Azure ML pipelines, adding monitoring dashboards for predictions, and implementing authentication for secure API access.
---

## Screenshots

1. **Azure App Service running the app** <img width="956" height="476" alt="image" src="https://github.com/user-attachments/assets/e79d5114-059b-4b84-ae36-6d854fdcc347" />

2. **Prediction command output** <img width="958" height="493" alt="image" src="https://github.com/user-attachments/assets/48157589-0ade-42ab-b92e-da84a593b7e7" />

3. **Azure Pipelines setup** <img width="699" height="137" alt="pipline" src="https://github.com/user-attachments/assets/4d1ec195-8bec-4dd9-8ed6-3965f56baa72" />


4. **Tests passing after running `make all`** <img width="956" height="488" alt="Make All run " src="https://github.com/user-attachments/assets/74236246-21d9-4c6b-be40-8f3890cb2be4" />

---

## GitHub Actions Badge

![Build Status](https://github.com/HssahSaad/cloud-ci-scaffold/actions/workflows/deploy-azure.yml/badge.svg)

---

## Google drive Like

[![Drive](https://drive.google.com/drive/folders/1ZVbK7quKOn2zDYGHZiX0AUlO7fqn8pxz?usp=sharing)
](https://drive.google.com/drive/folders/1ZVbK7quKOn2zDYGHZiX0AUlO7fqn8pxz?usp=sharing)

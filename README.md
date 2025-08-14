# Flask Machine Learning App with Azure CI/CD

## Overview

This project is a simple **Flask** web application that runs a **Machine Learning** model to predict a numeric value based on input data.
It is deployed on **Azure App Service** with **CI/CD** integration through **Azure Pipelines**.
Any update pushed to the GitHub repository is automatically tested and deployed.

---

## Architectural Diagram

*Diagram showing the flow: User → GitHub → Azure Pipelines → Azure App Service → Prediction Output.*

---

## How to Run Locally

1. **Clone the repository**

   ```bash
   git clone <repo-link>
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
* **Pipeline:** Azure Pipelines for Continuous Integration and Continuous Delivery (CI/CD)
* **Trigger:** Any code push to GitHub automatically triggers build and deployment to Azure.

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

* **Trello Board:** [[Click here](Trello-link)](https://trello.com/invite/b/689a136c34656571fde845fd/ATTIe8f6b1b34a5bd94d14f99d3ae0102ee5D152062E/website-development-project-plan)
* **Project Plan Spreadsheet:** [[Click here](Spreadsheet-link)](https://docs.google.com/spreadsheets/d/1oMJ55Bxuj8_HigrxktKnxtXbc5A3XjuH-ogmMRxz7ww/edit?usp=sharing)

---

## Screenshots

1. **Azure App Service running the app**
   <img width="956" height="476" alt="image" src="https://github.com/user-attachments/assets/e79d5114-059b-4b84-ae36-6d854fdcc347" />

2. **Prediction command output**
   <img width="958" height="493" alt="image" src="https://github.com/user-attachments/assets/48157589-0ade-42ab-b92e-da84a593b7e7" />
   
3. **Azure Pipelines successful build and deployment**
   <img width="953" height="398" alt="image" src="https://github.com/user-attachments/assets/ed09d4dc-c292-42f4-b90a-8ae1402b7e73" />

4. **Tests passing after running `make all`**
   <img width="956" height="488" alt="Make All run " src="https://github.com/user-attachments/assets/74236246-21d9-4c6b-be40-8f3890cb2be4" />


---

## Future Improvements

* Add authentication for the web app
* Deploy using Docker containers for more flexibility
* Improve ML model accuracy with more data
* Add input validation and error handling

---

## GitHub Actions Badge
![Build Status](https://github.com/HssahSaad/cloud-ci-scaffold/actions/workflows/deploy-azure.yml/badge.svg)

---

## Final Demo Video

[Watch the Demo on YouTube](YouTube-link)

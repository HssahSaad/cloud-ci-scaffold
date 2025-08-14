# Flask Machine Learning App with Azure CI/CD

## Overview
This is a simple project using Flask to run a Machine Learning model that predicts a value based on input data.  
The project is deployed on Azure App Service with CI/CD set up through Azure Pipelines, so any update in GitHub is automatically deployed.

## How to Run Locally
1. Clone the project:
   ```bash
   git clone <repo-link>
   cd flask-sklearn
   ````

2. Install the requirements:

   ```bash
   pip install -r requirements.txt
   ```
3. Run the app:

   ```bash
   python app.py
   ```
4. Open the browser and go to:

   ```
   http://localhost:5000
   ```

## Deployment to Azure

* The app is deployed to Azure App Service.
* CI/CD is enabled with Azure Pipelines.
* Any code push to GitHub triggers an automatic deployment to Azure.

## Test Prediction

To test the prediction script:

```bash
bash make_predict_azure_app.sh
```

Example output:

```json
{"prediction": [2.431574790057212]}
```

## Screenshots

* Azure App Service running the app.
* <img width="956" height="476" alt="image" src="https://github.com/user-attachments/assets/e79d5114-059b-4b84-ae36-6d854fdcc347" />

* Prediction command output.
* <img width="958" height="493" alt="image" src="https://github.com/user-attachments/assets/48157589-0ade-42ab-b92e-da84a593b7e7" />

* Azure Pipelines successful build and deployment.
* <img width="953" height="398" alt="image" src="https://github.com/user-attachments/assets/ed09d4dc-c292-42f4-b90a-8ae1402b7e73" />


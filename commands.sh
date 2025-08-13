
set -euo pipefail
RG="HssahRGc"
LOC="centralus"
PLAN="HssahPlanc"
APP="HssahApp2025c"
echo "Using RG=$RG, LOC=$LOC, PLAN=$PLAN, APP=$APP"

az group create -n "$RG" -l "$LOC" --tags project=flask-ml env=dev owner=hssah

az appservice plan create -g "$RG" -n "$PLAN" --is-linux --sku F1 -l "$LOC" \
  --tags project=flask-ml env=dev owner=hssah || true
az webapp create -g "$RG" -p "$PLAN" -n "$APP" --runtime "PYTHON|3.12" \
  --tags project=flask-ml env=dev owner=hssah || true
az webapp config set -g "$RG" -n "$APP" --linux-fx-version "PYTHON|3.12"
az webapp config set -g "$RG" -n "$APP" --startup-file "gunicorn --bind=0.0.0.0 --timeout 600 app:app"
az webapp config appsettings set -g "$RG" -n "$APP" \
  --settings SCM_DO_BUILD_DURING_DEPLOYMENT="true" ENABLE_ORYX_BUILD="true"
zip -r ../deploy.zip . \
  -x "*__pycache__*" ".git*" "*venv*" "*\.venv*" "*\.pytest_cache*" "node_modules/*"
az webapp deploy -g "$RG" -n "$APP" --src-path ../deploy.zip --type zip

az webapp restart -g "$RG" -n "$APP"
HOST=$(az webapp show -g "$RG" -n "$APP" --query defaultHostName -o tsv)
echo "Deployed URL: https://$HOST"

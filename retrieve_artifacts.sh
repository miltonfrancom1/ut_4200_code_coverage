API_TOKEN="CCIPAT_4J5N3K1NM3weXFWrFH7jEq_5c21960c41af5ec7d59f85ad4ec75b15a639e86d"
PROJECT_USERNAME="miltonfrancom1"
PROJECT_NAME="ut_4200_code_coverage"

WORKFLOW_RUN=$(curl -s -u $API_TOKEN: \
  "https://circleci.com/api/v2/project/github/$PROJECT_USERNAME/$PROJECT_NAME/pipeline?branch=main" | \
  jq -r '.items[0].id')

# Get the test results
curl -u $API_TOKEN: \
  "https://circleci.com/api/v2/project/github/$PROJECT_USERNAME/$PROJECT_NAME/workflow/$WORKFLOW_RUN/job?name=store-artifacts-test-results" \
  -o test-results.zip

# Get the coverage report
curl -u $API_TOKEN: \
  "https://circleci.com/api/v2/project/github/$PROJECT_USERNAME/$PROJECT_NAME/workflow/$WORKFLOW_RUN/job?name=store-artifacts-coverage" \
  -o coverage.zip

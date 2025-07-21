# Cloud Based Data Pipeline and Warehouse Automation on GCP with dbt and CI/CD

This project implements a full data pipeline and analytics workflow on Google Cloud Platform (GCP), using modern infrastructure-as-code and CI/CD best practices.
    
 •	Provisioned GCP resources (a GCE VM, BigQuery dataset, and GCS bucket) using Terraform.

 •	Ingested data into BigQuery via a pipeline: data generated in another project, which involves a containerized Docker Airflow environment, retrieving data from the New York taxi API and uploading to a GCS bucket. Those data were then loaded into BigQuery.

 •	Integrated BigQuery with dbt to develop a data warehouse:
        
        o	Created source tables, staging models, and final fact and dimension models.
    
        o	Added tests (uniqueness, referential integrity, and not-null) to YAML files to ensure data quality and support robust Continuous Integration (CI).
   
        o	Included model and column descriptions in YAML files to auto-generate project documentation.
    
        o	Development, testing, and documentation were all managed in a development environment, version-controlled via GitHub.

•	Set up a production environment with a scheduled dbt job to run daily.
    
        o	Configured a CI workflow that spins up a sandboxed replica of the production process to test changes from pull requests, ensuring stability before     deployment.
        o	Once CI checks pass, the updated models and pipeline are deployed to production.

•	Finally, visualized the curated data for stakeholders using Google Data Studio (Looker Studio).


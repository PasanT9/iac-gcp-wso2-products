## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4.51.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alert_policy_container_cpu"></a> [alert\_policy\_container\_cpu](#module\_alert\_policy\_container\_cpu) | ./modules/gcp/Alert-Policy | n/a |
| <a name="module_alert_policy_container_memory"></a> [alert\_policy\_container\_memory](#module\_alert\_policy\_container\_memory) | ./modules/gcp/Alert-Policy | n/a |
| <a name="module_alert_policy_container_restart_count"></a> [alert\_policy\_container\_restart\_count](#module\_alert\_policy\_container\_restart\_count) | ./modules/gcp/Alert-Policy | n/a |
| <a name="module_alert_policy_node_cpu"></a> [alert\_policy\_node\_cpu](#module\_alert\_policy\_node\_cpu) | ./modules/gcp/Alert-Policy | n/a |
| <a name="module_alert_policy_node_memory"></a> [alert\_policy\_node\_memory](#module\_alert\_policy\_node\_memory) | ./modules/gcp/Alert-Policy | n/a |
| <a name="module_bastion_instance"></a> [bastion\_instance](#module\_bastion\_instance) | ./modules/gcp/Bastion-VM | n/a |
| <a name="module_carbondb_fileshare_1"></a> [carbondb\_fileshare\_1](#module\_carbondb\_fileshare\_1) | ./modules/gcp/Filestore | n/a |
| <a name="module_carbondb_fileshare_2"></a> [carbondb\_fileshare\_2](#module\_carbondb\_fileshare\_2) | ./modules/gcp/Filestore | n/a |
| <a name="module_cloud_nat"></a> [cloud\_nat](#module\_cloud\_nat) | ./modules/gcp/Cloud-NAT | n/a |
| <a name="module_email_channel_primary"></a> [email\_channel\_primary](#module\_email\_channel\_primary) | ./modules/gcp/Notification-Channel | n/a |
| <a name="module_gke_cluster"></a> [gke\_cluster](#module\_gke\_cluster) | ./modules/gcp/Google-Kubernetes-Engine | n/a |
| <a name="module_project_svc"></a> [project\_svc](#module\_project\_svc) | ./modules/gcp/Project-Service | n/a |
| <a name="module_secret"></a> [secret](#module\_secret) | ./modules/gcp/Secret-Manager-Secrets | n/a |
| <a name="module_solr_fileshare_1"></a> [solr\_fileshare\_1](#module\_solr\_fileshare\_1) | ./modules/gcp/Filestore | n/a |
| <a name="module_solr_fileshare_2"></a> [solr\_fileshare\_2](#module\_solr\_fileshare\_2) | ./modules/gcp/Filestore | n/a |
| <a name="module_sql_instance"></a> [sql\_instance](#module\_sql\_instance) | ./modules/gcp/SQL-Instance | n/a |
| <a name="module_vpc_network"></a> [vpc\_network](#module\_vpc\_network) | ./modules/gcp/VPC | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_channel_name"></a> [alert\_channel\_name](#input\_alert\_channel\_name) | Channel name for alert notifications | `string` | `"primary"` | no |
| <a name="input_alert_email_address"></a> [alert\_email\_address](#input\_alert\_email\_address) | Alert email address | `string` | n/a | yes |
| <a name="input_bastion_ip_cidr_range"></a> [bastion\_ip\_cidr\_range](#input\_bastion\_ip\_cidr\_range) | Base IP CIDR range for the bastion subnet | `string` | n/a | yes |
| <a name="input_bastion_metadata_startup_script"></a> [bastion\_metadata\_startup\_script](#input\_bastion\_metadata\_startup\_script) | Startup script of the bastion VM | `string` | `"#!/bin/bash\n# Install Helm\ncurl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3nchmod 700 get_helm.sh\n./get_helm.sh\n# Install kubectl\necho \"deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main\" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list\ncurl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -\nsudo apt update\nsudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin kubectl\nexport USE_GKE_GCLOUD_AUTH_PLUGIN=True\n# Install Kustomize\nsudo snap install kustomize\n# Install Kapp\nwget -O- https://carvel.dev/install.sh > install.sh\nsudo bash install.sh\n# Install yq and jq\nsudo snap install yq\nsudo apt-get install jq\n# Intsall Unzip\nsudo apt install unzip\n# Install mysql client\nsudo apt install mysql-client-8.0 -y\n"` | no |
| <a name="input_bastion_vm_boot_disk_image"></a> [bastion\_vm\_boot\_disk\_image](#input\_bastion\_vm\_boot\_disk\_image) | Bastion VM boot disk image | `string` | `"ubuntu-2204-lts"` | no |
| <a name="input_bastion_vm_machine_type"></a> [bastion\_vm\_machine\_type](#input\_bastion\_vm\_machine\_type) | Bastion VM machine type | `string` | n/a | yes |
| <a name="input_carbondb_fileshare_1"></a> [carbondb\_fileshare\_1](#input\_carbondb\_fileshare\_1) | File share name | `string` | `"carbondb1"` | no |
| <a name="input_carbondb_fileshare_2"></a> [carbondb\_fileshare\_2](#input\_carbondb\_fileshare\_2) | File share name | `string` | `"carbondb2"` | no |
| <a name="input_cluster_deletion_protection"></a> [cluster\_deletion\_protection](#input\_cluster\_deletion\_protection) | Deletion protection. If false, GKE cluster will be deleted with terraform destroy | `bool` | `true` | no |
| <a name="input_cluster_ip_cidr_range"></a> [cluster\_ip\_cidr\_range](#input\_cluster\_ip\_cidr\_range) | Cluster IP CIDR range | `string` | n/a | yes |
| <a name="input_cluster_location"></a> [cluster\_location](#input\_cluster\_location) | Cluster location | `string` | n/a | yes |
| <a name="input_cluster_secondary_pods_cidr_range"></a> [cluster\_secondary\_pods\_cidr\_range](#input\_cluster\_secondary\_pods\_cidr\_range) | Cluster secondary pods CIDR range | `string` | n/a | yes |
| <a name="input_cluster_secondary_services_cidr_range"></a> [cluster\_secondary\_services\_cidr\_range](#input\_cluster\_secondary\_services\_cidr\_range) | Cluster secondary services CIDR range | `string` | n/a | yes |
| <a name="input_container_cpu_alert_duration"></a> [container\_cpu\_alert\_duration](#input\_container\_cpu\_alert\_duration) | Container CPU alert duration | `string` | n/a | yes |
| <a name="input_container_cpu_alert_name"></a> [container\_cpu\_alert\_name](#input\_container\_cpu\_alert\_name) | Container CPU alert name | `string` | n/a | yes |
| <a name="input_container_cpu_alert_renotify_interval"></a> [container\_cpu\_alert\_renotify\_interval](#input\_container\_cpu\_alert\_renotify\_interval) | Container CPU alert renotify interval | `string` | n/a | yes |
| <a name="input_container_cpu_alert_threshold_value"></a> [container\_cpu\_alert\_threshold\_value](#input\_container\_cpu\_alert\_threshold\_value) | Container CPU alert threshold value | `number` | n/a | yes |
| <a name="input_container_memory_alert_duration"></a> [container\_memory\_alert\_duration](#input\_container\_memory\_alert\_duration) | Container memory alert duration | `string` | n/a | yes |
| <a name="input_container_memory_alert_name"></a> [container\_memory\_alert\_name](#input\_container\_memory\_alert\_name) | Container memory alert name | `string` | n/a | yes |
| <a name="input_container_memory_alert_renotify_interval"></a> [container\_memory\_alert\_renotify\_interval](#input\_container\_memory\_alert\_renotify\_interval) | Container memory alert renotify interval | `string` | n/a | yes |
| <a name="input_container_memory_alert_threshold_value"></a> [container\_memory\_alert\_threshold\_value](#input\_container\_memory\_alert\_threshold\_value) | Container memory alert threshold value | `number` | n/a | yes |
| <a name="input_container_restart_alert_alignment_period"></a> [container\_restart\_alert\_alignment\_period](#input\_container\_restart\_alert\_alignment\_period) | Container restart alert alignment period | `string` | n/a | yes |
| <a name="input_container_restart_alert_duration"></a> [container\_restart\_alert\_duration](#input\_container\_restart\_alert\_duration) | Container restart alert duration | `string` | n/a | yes |
| <a name="input_container_restart_alert_name"></a> [container\_restart\_alert\_name](#input\_container\_restart\_alert\_name) | Container restart alert name | `string` | n/a | yes |
| <a name="input_container_restart_alert_renotify_interval"></a> [container\_restart\_alert\_renotify\_interval](#input\_container\_restart\_alert\_renotify\_interval) | Container restart alert renotify interval | `string` | n/a | yes |
| <a name="input_container_restart_alert_threshold_value"></a> [container\_restart\_alert\_threshold\_value](#input\_container\_restart\_alert\_threshold\_value) | Container restart alert threshold value | `number` | n/a | yes |
| <a name="input_database_tier"></a> [database\_tier](#input\_database\_tier) | Database tier | `string` | n/a | yes |
| <a name="input_database_version"></a> [database\_version](#input\_database\_version) | Database version | `string` | `"MYSQL_8_0"` | no |
| <a name="input_db_availability_type"></a> [db\_availability\_type](#input\_db\_availability\_type) | Availability type | `string` | n/a | yes |
| <a name="input_db_backup_enabled"></a> [db\_backup\_enabled](#input\_db\_backup\_enabled) | DB backup enabled | `bool` | n/a | yes |
| <a name="input_db_binary_log_enabled"></a> [db\_binary\_log\_enabled](#input\_db\_binary\_log\_enabled) | Binary logs enabled for DB. This should be true only for MySQL Regional (not Zonal) deployments | `bool` | n/a | yes |
| <a name="input_db_cidr_range"></a> [db\_cidr\_range](#input\_db\_cidr\_range) | DB CIDR range | `string` | n/a | yes |
| <a name="input_db_common_labels"></a> [db\_common\_labels](#input\_db\_common\_labels) | Common labels | `map(string)` | <pre>{<br>  "user": "apim"<br>}</pre> | no |
| <a name="input_db_deletion_protection"></a> [db\_deletion\_protection](#input\_db\_deletion\_protection) | Deletion protection. If false, database will be deleted with terraform destroy | `bool` | `true` | no |
| <a name="input_db_disk_size"></a> [db\_disk\_size](#input\_db\_disk\_size) | Disk size | `number` | n/a | yes |
| <a name="input_db_disk_type"></a> [db\_disk\_type](#input\_db\_disk\_type) | Disk type | `string` | n/a | yes |
| <a name="input_db_ipv4_enabled"></a> [db\_ipv4\_enabled](#input\_db\_ipv4\_enabled) | DB IPv4 enabled | `bool` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | DB name | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | DB password | `string` | n/a | yes |
| <a name="input_db_query_insights_enabled"></a> [db\_query\_insights\_enabled](#input\_db\_query\_insights\_enabled) | Query insights enabled | `bool` | n/a | yes |
| <a name="input_db_require_ssl"></a> [db\_require\_ssl](#input\_db\_require\_ssl) | Require SSL for DB connections | `bool` | n/a | yes |
| <a name="input_db_retained_backups"></a> [db\_retained\_backups](#input\_db\_retained\_backups) | DB retained backups | `number` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | DB username | `string` | n/a | yes |
| <a name="input_default_max_pods_per_node"></a> [default\_max\_pods\_per\_node](#input\_default\_max\_pods\_per\_node) | Maximum number of pods per node | `number` | n/a | yes |
| <a name="input_deletion_policy"></a> [deletion\_policy](#input\_deletion\_policy) | The deletion policy for the secret. | `string` | `"DELETE"` | no |
| <a name="input_enable_database"></a> [enable\_database](#input\_enable\_database) | Set true to enable the creation of a MySQL database. | `bool` | `true` | no |
| <a name="input_enable_persistent_storage_1"></a> [enable\_persistent\_storage\_1](#input\_enable\_persistent\_storage\_1) | Deploy 2 filestores for Solr indexing | `bool` | `true` | no |
| <a name="input_enable_persistent_storage_2"></a> [enable\_persistent\_storage\_2](#input\_enable\_persistent\_storage\_2) | Deploy 2 extra filestores for Solr indexing for Control Plane with HA | `bool` | `true` | no |
| <a name="input_enable_secret"></a> [enable\_secret](#input\_enable\_secret) | Enable secrets to store keystore password | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Deployment environment. This will be used for resource naming. | `string` | `"Dev"` | no |
| <a name="input_filestore_capacity_gb"></a> [filestore\_capacity\_gb](#input\_filestore\_capacity\_gb) | Filestore capacity in GB | `number` | n/a | yes |
| <a name="input_filestore_location"></a> [filestore\_location](#input\_filestore\_location) | Filestore location | `string` | n/a | yes |
| <a name="input_filestore_tier"></a> [filestore\_tier](#input\_filestore\_tier) | Filestore tier | `string` | n/a | yes |
| <a name="input_ip_cidr_range"></a> [ip\_cidr\_range](#input\_ip\_cidr\_range) | IP CIDR range | `string` | n/a | yes |
| <a name="input_is_secret_data_base64"></a> [is\_secret\_data\_base64](#input\_is\_secret\_data\_base64) | Flag indicating whether secret data is base64 encoded or not. | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels | `map(string)` | n/a | yes |
| <a name="input_master_authorized_networks_cidr"></a> [master\_authorized\_networks\_cidr](#input\_master\_authorized\_networks\_cidr) | IP CIDR range for the master authorized networks | `string` | n/a | yes |
| <a name="input_master_cluster_ipv4_cidr"></a> [master\_cluster\_ipv4\_cidr](#input\_master\_cluster\_ipv4\_cidr) | IP CIDR range for the master cluster | `string` | n/a | yes |
| <a name="input_master_kubernetes_version"></a> [master\_kubernetes\_version](#input\_master\_kubernetes\_version) | Kubernetes version of the GKE cluster | `string` | n/a | yes |
| <a name="input_node_cpu_alert_duration"></a> [node\_cpu\_alert\_duration](#input\_node\_cpu\_alert\_duration) | Node CPU alert duration | `string` | n/a | yes |
| <a name="input_node_cpu_alert_name"></a> [node\_cpu\_alert\_name](#input\_node\_cpu\_alert\_name) | Node CPU alert name | `string` | n/a | yes |
| <a name="input_node_cpu_alert_renotify_interval"></a> [node\_cpu\_alert\_renotify\_interval](#input\_node\_cpu\_alert\_renotify\_interval) | Node CPU alert renotify interval | `string` | n/a | yes |
| <a name="input_node_cpu_alert_threshold_value"></a> [node\_cpu\_alert\_threshold\_value](#input\_node\_cpu\_alert\_threshold\_value) | Node CPU alert threshold value | `number` | n/a | yes |
| <a name="input_node_memory_alert_duration"></a> [node\_memory\_alert\_duration](#input\_node\_memory\_alert\_duration) | Node memory alert duration | `string` | n/a | yes |
| <a name="input_node_memory_alert_name"></a> [node\_memory\_alert\_name](#input\_node\_memory\_alert\_name) | Node memory alert name | `string` | n/a | yes |
| <a name="input_node_memory_alert_renotify_interval"></a> [node\_memory\_alert\_renotify\_interval](#input\_node\_memory\_alert\_renotify\_interval) | Node memory alert renotify interval | `string` | n/a | yes |
| <a name="input_node_memory_alert_threshold_value"></a> [node\_memory\_alert\_threshold\_value](#input\_node\_memory\_alert\_threshold\_value) | Node memory alert threshold value | `number` | n/a | yes |
| <a name="input_node_pool_location"></a> [node\_pool\_location](#input\_node\_pool\_location) | Node pool location | `string` | n/a | yes |
| <a name="input_node_pool_machine_type"></a> [node\_pool\_machine\_type](#input\_node\_pool\_machine\_type) | Node pool machine type | `string` | n/a | yes |
| <a name="input_node_pool_max_node_count"></a> [node\_pool\_max\_node\_count](#input\_node\_pool\_max\_node\_count) | Node pool max node count | `number` | n/a | yes |
| <a name="input_node_pool_min_node_count"></a> [node\_pool\_min\_node\_count](#input\_node\_pool\_min\_node\_count) | Node pool min node count | `number` | n/a | yes |
| <a name="input_node_pool_node_count"></a> [node\_pool\_node\_count](#input\_node\_pool\_node\_count) | Node pool node count | `number` | n/a | yes |
| <a name="input_node_pool_zone_locations"></a> [node\_pool\_zone\_locations](#input\_node\_pool\_zone\_locations) | Node pool zone locations | `list(string)` | n/a | yes |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | GCP project name | `string` | n/a | yes |
| <a name="input_project_services"></a> [project\_services](#input\_project\_services) | GCP project services | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Deployment region | `string` | n/a | yes |
| <a name="input_secret_annotations"></a> [secret\_annotations](#input\_secret\_annotations) | Annotations for the secret in Google Secret Manager. | `map(string)` | `{}` | no |
| <a name="input_secret_data"></a> [secret\_data](#input\_secret\_data) | The secret data to be stored. | `string` | n/a | yes |
| <a name="input_secret_id"></a> [secret\_id](#input\_secret\_id) | The ID of the secret in Google Secret Manager. | `string` | `"wso2am"` | no |
| <a name="input_secret_replication_mode"></a> [secret\_replication\_mode](#input\_secret\_replication\_mode) | Replication mode for the secret in Google Secret Manager. | `string` | `"auto"` | no |
| <a name="input_solr_fileshare_1"></a> [solr\_fileshare\_1](#input\_solr\_fileshare\_1) | File share name | `string` | `"solr1"` | no |
| <a name="input_solr_fileshare_2"></a> [solr\_fileshare\_2](#input\_solr\_fileshare\_2) | File share name | `string` | `"solr2"` | no |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC name | `string` | n/a | yes |
| <a name="input_vpc_subnetwork_name"></a> [vpc\_subnetwork\_name](#input\_vpc\_subnetwork\_name) | VPC subnetwork name | `string` | n/a | yes |
| <a name="input_zone"></a> [zone](#input\_zone) | Deployment zone | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bastion_instance"></a> [bastion\_instance](#output\_bastion\_instance) | ID of the bastion instance. |
| <a name="output_carbondb_fileshare_1_fileshare_name"></a> [carbondb\_fileshare\_1\_fileshare\_name](#output\_carbondb\_fileshare\_1\_fileshare\_name) | Fileshare name associated with the filestore for carbondb1. |
| <a name="output_carbondb_fileshare_1_filestore_name"></a> [carbondb\_fileshare\_1\_filestore\_name](#output\_carbondb\_fileshare\_1\_filestore\_name) | Filestore name for carbondb1. |
| <a name="output_carbondb_fileshare_1_ip"></a> [carbondb\_fileshare\_1\_ip](#output\_carbondb\_fileshare\_1\_ip) | IP address of the filestore for carbondb1. |
| <a name="output_carbondb_fileshare_2_fileshare_name"></a> [carbondb\_fileshare\_2\_fileshare\_name](#output\_carbondb\_fileshare\_2\_fileshare\_name) | Fileshare name associated with the filestore for carbondb2. |
| <a name="output_carbondb_fileshare_2_filestore_name"></a> [carbondb\_fileshare\_2\_filestore\_name](#output\_carbondb\_fileshare\_2\_filestore\_name) | Filestore name for carbondb2. |
| <a name="output_carbondb_fileshare_2_ip"></a> [carbondb\_fileshare\_2\_ip](#output\_carbondb\_fileshare\_2\_ip) | IP address of the filestore for carbondb2. |
| <a name="output_database_connection_name"></a> [database\_connection\_name](#output\_database\_connection\_name) | Connection name of the database instance. |
| <a name="output_database_default_user"></a> [database\_default\_user](#output\_database\_default\_user) | Default user of the database instance. |
| <a name="output_database_internal_ip"></a> [database\_internal\_ip](#output\_database\_internal\_ip) | Internal IP address of the database instance. |
| <a name="output_filestore_location"></a> [filestore\_location](#output\_filestore\_location) | Location of the filestore for carbondb1. |
| <a name="output_secret_id"></a> [secret\_id](#output\_secret\_id) | Secret ID obtained from module.secret. |
| <a name="output_solr_fileshare_1_fileshare_name"></a> [solr\_fileshare\_1\_fileshare\_name](#output\_solr\_fileshare\_1\_fileshare\_name) | Fileshare name associated with the filestore for solr1. |
| <a name="output_solr_fileshare_1_filestore_name"></a> [solr\_fileshare\_1\_filestore\_name](#output\_solr\_fileshare\_1\_filestore\_name) | Filestore name for solr1. |
| <a name="output_solr_fileshare_1_ip"></a> [solr\_fileshare\_1\_ip](#output\_solr\_fileshare\_1\_ip) | IP address of the filestore for solr1. |
| <a name="output_solr_fileshare_2_fileshare_name"></a> [solr\_fileshare\_2\_fileshare\_name](#output\_solr\_fileshare\_2\_fileshare\_name) | Fileshare name associated with the filestore for solr2. |
| <a name="output_solr_fileshare_2_filestore_name"></a> [solr\_fileshare\_2\_filestore\_name](#output\_solr\_fileshare\_2\_filestore\_name) | Filestore name for solr2. |
| <a name="output_solr_fileshare_2_ip"></a> [solr\_fileshare\_2\_ip](#output\_solr\_fileshare\_2\_ip) | IP address of the filestore for solr2. |

---
This document is autogenerated using terraform-docs (https://github.com/terraform-docs/terraform-docs)

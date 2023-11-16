# -------------------------------------------------------------------------------------
#
# Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
#
# This software is the property of WSO2 LLC. and its suppliers, if any.
# Dissemination of any information or reproduction of any material contained
# herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
# You may not alter or remove any copyright or other notice from copies of this content.
#
# --------------------------------------------------------------------------------------

output "bastion_instance" {
  description = "ID of the bastion instance."
  value       = module.bastion_instance.bastion_instance_id
  depends_on  = [module.bastion_instance]
}

output "database_internal_ip" {
  description = "Internal IP address of the database instance."
  value       = module.sql_instance[0].database_internal_ip
  depends_on  = [module.sql_instance]
}

output "database_connection_name" {
  description = "Connection name of the database instance."
  value       = module.sql_instance[0].database_connection_name
  depends_on  = [module.sql_instance]
}

output "database_default_user" {
  description = "Default user of the database instance."
  value       = module.sql_instance[0].database_default_user
  depends_on  = [module.sql_instance]
}

output "filestore_location" {
  value       = module.carbondb_fileshare_1[0].location
  depends_on  = [module.carbondb_fileshare_1]
  description = "Location of the filestore for carbondb1."
}

output "carbondb_fileshare_1_ip" {
  value       = module.carbondb_fileshare_1[0].ip_address
  depends_on  = [module.carbondb_fileshare_1]
  description = "IP address of the filestore for carbondb1."
}

output "carbondb_fileshare_1_fileshare_name" {
  value       = module.carbondb_fileshare_1[0].fileshare_name
  depends_on  = [module.carbondb_fileshare_1]
  description = "Fileshare name associated with the filestore for carbondb1."
}

output "carbondb_fileshare_1_filestore_name" {
  value       = module.carbondb_fileshare_1[0].filestore_name
  depends_on  = [module.carbondb_fileshare_1]
  description = "Filestore name for carbondb1."
}

output "solr_fileshare_1_ip" {
  value       = module.solr_fileshare_1[0].ip_address
  depends_on  = [module.solr_fileshare_1]
  description = "IP address of the filestore for solr1."
}

output "solr_fileshare_1_fileshare_name" {
  value       = module.solr_fileshare_1[0].fileshare_name
  depends_on  = [module.solr_fileshare_1]
  description = "Fileshare name associated with the filestore for solr1."
}

output "solr_fileshare_1_filestore_name" {
  value       = module.solr_fileshare_1[0].filestore_name
  depends_on  = [module.solr_fileshare_1]
  description = "Filestore name for solr1."
}

output "carbondb_fileshare_2_ip" {
  value       = module.carbondb_fileshare_2[0].ip_address
  depends_on  = [module.carbondb_fileshare_2]
  description = "IP address of the filestore for carbondb2."
}

output "carbondb_fileshare_2_fileshare_name" {
  value       = module.carbondb_fileshare_2[0].fileshare_name
  depends_on  = [module.carbondb_fileshare_2]
  description = "Fileshare name associated with the filestore for carbondb2."
}

output "carbondb_fileshare_2_filestore_name" {
  value       = module.carbondb_fileshare_2[0].filestore_name
  depends_on  = [module.carbondb_fileshare_2]
  description = "Filestore name for carbondb2."
}

output "solr_fileshare_2_ip" {
  value       = module.solr_fileshare_2[0].ip_address
  depends_on  = [module.solr_fileshare_2]
  description = "IP address of the filestore for solr2."
}

output "solr_fileshare_2_fileshare_name" {
  value       = module.solr_fileshare_2[0].fileshare_name
  depends_on  = [module.solr_fileshare_2]
  description = "Fileshare name associated with the filestore for solr2."
}

output "solr_fileshare_2_filestore_name" {
  value       = module.solr_fileshare_2[0].filestore_name
  depends_on  = [module.solr_fileshare_2]
  description = "Filestore name for solr2."
}

output "secret_id" {
  value       = module.secret[0].secret_id
  depends_on  = [module.secret]
  description = "Secret ID obtained from module.secret."
}

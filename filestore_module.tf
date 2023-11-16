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

module "carbondb_fileshare_1" {
  source                = "./modules/gcp/Filestore"
  count                 = var.enable_persistent_storage_1 ? 1 : 0
  project_name          = var.project_name
  environment           = var.environment
  vpc_name              = module.vpc_network.vpc_name
  filestore_name        = var.carbondb_fileshare_1
  filestore_location    = var.filestore_location
  filestore_capacity_gb = var.filestore_capacity_gb
  filestore_tier        = var.filestore_tier
}

module "solr_fileshare_1" {
  source                = "./modules/gcp/Filestore"
  count                 = var.enable_persistent_storage_1 ? 1 : 0
  project_name          = var.project_name
  environment           = var.environment
  vpc_name              = module.vpc_network.vpc_name
  filestore_name        = var.solr_fileshare_1
  filestore_location    = var.filestore_location
  filestore_capacity_gb = var.filestore_capacity_gb
  filestore_tier        = var.filestore_tier
}

module "carbondb_fileshare_2" {
  source                = "./modules/gcp/Filestore"
  count                 = var.enable_persistent_storage_2 ? 1 : 0
  project_name          = var.project_name
  environment           = var.environment
  vpc_name              = module.vpc_network.vpc_name
  filestore_name        = var.carbondb_fileshare_2
  filestore_location    = var.filestore_location
  filestore_capacity_gb = var.filestore_capacity_gb
  filestore_tier        = var.filestore_tier
}

module "solr_fileshare_2" {
  source                = "./modules/gcp/Filestore"
  count                 = var.enable_persistent_storage_2 ? 1 : 0
  project_name          = var.project_name
  environment           = var.environment
  vpc_name              = module.vpc_network.vpc_name
  filestore_name        = var.solr_fileshare_2
  filestore_location    = var.filestore_location
  filestore_capacity_gb = var.filestore_capacity_gb
  filestore_tier        = var.filestore_tier
}


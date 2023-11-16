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

output "ip_address" {
  value      = google_filestore_instance.persistent_storage.networks[0].ip_addresses[0]
  depends_on = [google_filestore_instance.persistent_storage]
}

output "fileshare_name" {
  value      = google_filestore_instance.persistent_storage.file_shares[0].name
  depends_on = [google_filestore_instance.persistent_storage]
}

output "filestore_name" {
  value      = google_filestore_instance.persistent_storage.name
  depends_on = [google_filestore_instance.persistent_storage]
}

output "location" {
  value      = google_filestore_instance.persistent_storage.location
  depends_on = [google_filestore_instance.persistent_storage]
}

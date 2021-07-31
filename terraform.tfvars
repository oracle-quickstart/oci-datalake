# Configuration #

#### prefix - customer name without space #### Suffix - Environmnet type for e.g Dev, Test, Prod,PreProd, this will be used in all Resource Names.
Resource_prefix	= "XYZ"  
Resource_suffix_dev	= "DEV"			# Suffix for Environment-1/Non Prod
Resource_main	= "DL"		# Using a Display name for e.g. Acme_Datalake_Dev

## Providers Variables
region           = "us-ashburn-1"
availability_domain = "pSSn:US-ASHBURN-AD-1"

## Compartment Variables

compartment_network_ocid ="ocid1.compartment.oc1..a.....joz4p5pti7sq"

## VCN

vcn_cidr= "10.10.0.0/16"
vcn_dns_prefix="datalake"

### Subnet

subnet_dev_pub_cidr= "10.10.1.0/24"
subnet_dev_pvt_db_cidr= "10.10.2.0/24"
subnet_dev_pvt_app_cidr="10.10.3.0/24"

## OCI Oracle Database VMDB

database_admin_password= "PAssword123#_"
database_db_unique_name = ""
database_db_workload = "OLTP"
database_pdb_name= "PDB1"
database_version ="19.11.0.0"
database_shape= "VM.Standard2.1"
database_shape_prod= "VM.Standard2.2"
database_storage= "256"
database_storage_prod= "1024"
database_storage_management = "LVM"
database_ssh_pub_key="ssh-rsa AAAAB3Nz....."
database_edition="ENTERPRISE_EDITION"
database_nodecount = "1"

## OAC

oac_capacity_type = "OLPU_COUNT"
oac_capacity_value= 1
oac_capacity_value_prod= 2
oac_feature_set = "ENTERPRISE_ANALYTICS"
oac_license_type = "LICENSE_INCLUDED"
oac_idcs_token = "as33dd.......W5g"
# Refer this link to create IDCS token for creating OAC instance : https://support.oracle.com/epmos/faces/DocumentDisplay?_afrLoop=372706774245023&parent=EXTERNAL_SEARCH&sourceId=BULLETIN&id=2608610.1&_afrWindowMode=0&_adf.ctrl-state=pmpdd0v58_4

#PAC

oac_pac_domain_suffix="oraclevcn.com"

## OIC ##
integration_instance_idcs_access_token="eyJ4N....gRW5g"
## Refer this link for how to create the OIC IDCS Access token : https://www.techsupper.com/2020/04/token-required-to-provision-an-oracle-integration-cloud-instance.html

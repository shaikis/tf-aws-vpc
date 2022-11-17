# Call vpc Module here. 
module "vpc" {
    source                    = "git@github.com:shaikis/terraform-aws-vpc.git"
    main_cidr                 = var.main_cidr
    private_subnet_cidr       = var.private_subnet_cidr
    pub_subnet_cidr           = var.pub_subnet_cidr
    #Vpc tags
    vpc_name                  = var.vpc_name
    vpc_environment_tag       = var.vpc_environment_tag
    vpc_product_tag           = var.vpc_product_tag
    vpc_contact_tag           = var.vpc_contact_tag
    
}

#module.vpc.vpc_id
#module.vpc.private_subnet_id
#module.vpc.pub_subnet_id
#module.vpc.private_cidr
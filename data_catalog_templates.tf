resource "google_data_catalog_tag_template" "data_governance_tag_template" {
  tag_template_id = "data_governance_mock"
  project         = var.proj_id
  display_name    = "Data Governance Mock"
  region          = "us-east1"
  force_delete    = true

  fields {
    display_name = "Description"
    field_id = "description"
    is_required = true
    order = 6
    type {
      primitive_type = "STRING"
    }
  }
  fields {
    display_name = "Business Owner"
    field_id= "business_owner"
    is_required= true
    order= 5
    type {
      primitive_type = "STRING"
    }
  }

  fields {  
    display_name= "Data Governor"
    field_id= "data_governor"
    is_required= true
    order= 4
    type {
      primitive_type = "STRING"
    }
  }

  fields {
    display_name = "Data Classification"
    field_id ="data_classification"
    is_required= true
    order= 3
    type {
      enum_type {
        allowed_values {
          display_name= "Public"
        }
        allowed_values {
          display_name= "Sensitive"
        }
        allowed_values {
          display_name= "Confidential"
        }
      }
    }
  }

  fields {
    display_name= "Is Encrypted"
    field_id= "is_encrypted"
    is_required= true
    order = 2
    type {
          primitive_type = "BOOL"
    }
  }

  fields {
    display_name= "Has PII"
    field_id= "has_pii"
    is_required= true
    order= 1
    type {
      primitive_type= "BOOL"
    }
  }

  fields {
    display_name= "Environment"
    field_id= "environment"
    is_required= true
    order= 0
    type {
      enum_type {
        allowed_values {
          display_name= "DEV"
        }
        allowed_values {
          display_name= "QA"
        }
        allowed_values {
          display_name= "PRODUCTION"
        }
      } 
    }
  }
}

resource "google_data_catalog_tag_template" "data_ingestion_tag_template" {
  tag_template_id = "data_ingestion_mock"
  project         = var.proj_id
  display_name    = "Data Ingestion Mock"
  region          = "us-east1"
  force_delete    = true

  fields {  
    display_name= "DF Pipeline Name"
    field_id= "df_pipeline_name"
    is_required= false
    order= 4
    type {
      primitive_type = "STRING"
    }
  }

  fields {
    display_name = "Composer Pipeline Name"
    field_id ="composer_pipeline_name"
    is_required= false
    order= 3
    type {
      primitive_type = "STRING"
    }
  }

  fields {
    display_name= "Updated by Scheduled Query"
    field_id= "updated_by_scheduled_query"
    is_required= true
    order = 2
    type {
      primitive_type = "BOOL"
    }
  }

  fields {
    display_name= "Data Source Execution Start Time UTC"
    field_id= "data_source_execution_start_time_utc"
    is_required= true
    order= 1
    type {
      primitive_type= "STRING"
    }
  }

  fields {
    display_name= "Update Frequency"
    field_id= "update_frequency"
    is_required= true
    order= 0
    type {
      enum_type {
        allowed_values {
          display_name= "Hourly"
        }
        allowed_values {
          display_name= "Daily"
        }
        allowed_values {
          display_name= "Weekly"
        }
        allowed_values {
          display_name= "Monthly"
        }
        allowed_values {
          display_name= "Yearly"
        }
      } 
    }
  }
}

resource "google_data_catalog_tag_template" "data_quality_tag_template" {
  tag_template_id = "data_quality_mock"
  project         = var.proj_id
  display_name    = "Data Quality Mock"
  region          = "us-east1"
  force_delete    = true

  fields {
    display_name = "Quality Contact"
    field_id= "quality_contact"
    is_required= true
    order= 5
    type {
      primitive_type = "STRING"
    }
  }

  fields {  
    display_name= "Quality Issues"
    field_id= "quality_issues"
    is_required= false
    order= 4
    type {
      primitive_type = "STRING"
    }
  }

  fields {
    display_name = "Environment"
    field_id ="environment"
    is_required= true
    order= 3
    type {
      enum_type {
        allowed_values {
          display_name= "DEV"
        }
        allowed_values {
          display_name= "QA"
        }
        allowed_values {
          display_name= "PRODUCTION"
        }
      }
    }
  }

  fields {
    display_name= "Number of Columns"
    field_id= "number_of_columns"
    is_required= true
    order = 2
    type {
          primitive_type = "STRING"
    }
  }

  fields {
    display_name= "Rows added last 24hrs"
    field_id= "rows_added_last_24hrs"
    is_required= false
    order= 1
    type {
      primitive_type= "STRING"
    }
  }


  fields {
    display_name= "Number of Rows"
    field_id= "number_of_rows"
    is_required= false
    order= 0
    type {
      primitive_type= "STRING"
    }
  }
}

resource "google_data_catalog_tag_template" "geo_context_tag_template" {
  tag_template_id = "geo_context_mock"
  project         = var.proj_id
  display_name    = "Geo Context Mock"
  region          = "us-east1"
  force_delete    = true

  fields {
    display_name = "Region"
    field_id ="region"
    is_required= true
    order= 1
    type {
      enum_type {
        allowed_values {
          display_name= "NA"
        }
        allowed_values {
          display_name= "EMEA"
        }
        allowed_values {
          display_name= "APAC"
        }
        allowed_values {
          display_name= "JAPAN"
        }
      }
    }
  }

  fields {
    display_name= "Country"
    field_id= "country"
    is_required= true
    order= 0
    type {
      primitive_type= "STRING"
    }
  }
}


resource "google_data_catalog_tag_template" "column_description_tag_template" {
  tag_template_id = "column_description_mock"
  project         = var.proj_id
  display_name    = "Column Description Mock"
  region          = "us-east1"
  force_delete    = true

  fields {  
    display_name= "Description"
    field_id= "description"
    is_required= true
    order= 3
    type {
      primitive_type = "STRING"
    }
  }

  fields {
    display_name= "Is Hashed PII"
    field_id= "is_hashed_pii"
    is_required= true
    order = 2
    type {
      primitive_type = "BOOL"
    }
  }

  fields {
    display_name= "PII Type"
    field_id= "pii_type"
    is_required= false
    order= 1
    type {
      primitive_type= "STRING"
    }
  }


  fields {
    display_name= "Is Key"
    field_id= "is_key"
    is_required= true
    order= 0
    type {
      primitive_type= "BOOL"
    }
  }
}

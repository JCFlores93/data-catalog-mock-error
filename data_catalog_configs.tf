locals {
  
  // todo replace by your own entry id
  base64_encoded_id    = trim(base64encode(google_bigquery_table.mock_tables["mock_column_schema.json"].id), "=")
  parent_user_info = "projects/${var.proj_id}/locations/us/entryGroups/@bigquery/entries/${local.base64_encoded_id}"
}

resource "google_data_catalog_tag" "data_catalog_tag_data_governance_mock_column" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.data_governance_tag_template.name


  fields {
    field_name = "description"
     string_value = "mock"
  }

  fields {
    field_name = "business_owner"
        string_value= "mock"
  }

  fields {
    field_name = "data_governor"
        string_value= "mock"
  }
  
  fields {
    field_name = "data_classification"
    enum_value= "Confidential"
  }

  fields {
    field_name = "is_encrypted"
        bool_value= false
  }

  fields {
    field_name = "has_pii"
    bool_value= true
  }
  
  fields {
    field_name = "environment"
        enum_value= "DEV"
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_data_quality_mock_column" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.data_quality_tag_template.name  

  fields {
    field_name = "quality_contact"
     string_value = "mock"
  }

  fields {
    field_name = "environment"
    enum_value= "DEV"
  }

  fields {
    field_name = "number_of_columns"
        string_value= "11111111111111111111"
  }

  fields {
    field_name = "rows_added_last_24hrs"
    string_value= "1111111111111111111111111111111"
  }


  fields {
    field_name = "number_of_rows"
    string_value = "11111111111111111111111111111111111"
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_data_ingestion_mock_column" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.data_ingestion_tag_template.name  

  fields {
    field_name = "df_pipeline_name"
     string_value = "mock"
  }

  fields {
    field_name = "composer_pipeline_name"
        string_value= "mock"
  }

  fields {
    field_name = "updated_by_scheduled_query"
    bool_value = false
  }
  
  fields {
    field_name = "data_source_execution_start_time_utc"
    string_value= "11111111111111111111111111111"
  }
  
  fields {
    field_name = "update_frequency"
    enum_value= "Daily"
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column1" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column1"

  fields {
    field_name = "description"
    string_value = "1111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = true
  }

  fields {
    field_name = "pii_type"
    string_value = "1111111111111111111111"
  }
  
  fields {
    field_name = "is_key"
    bool_value = true
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column2" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column2"

  fields {
    field_name = "description"
    string_value = "11111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column3" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name
  column   = "column3"

  fields {
    field_name = "description"
    string_value = "1111111111111111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column4" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column4"

  fields {
    field_name = "description"
    string_value = "1111111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column5" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column5"

  fields {
    field_name = "description"
    string_value = "111111111111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column6" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name
  column   = "column6"

  fields {
    field_name = "description"
    string_value = "11111111111111111111111111111111111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column7" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column7"

  fields {
    field_name = "description"
    string_value = "1111111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column8" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column8"

  fields {
    field_name = "description"
    string_value = "111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column9" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column9"

  fields {
    field_name = "description"
    string_value = "1111111111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column10" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column10"

  fields {
    field_name = "description"
    string_value = "11111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column11" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column11"

  fields {
    field_name = "description"
    string_value = "11111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column12" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name  
  column   = "column12"

  fields {
    field_name = "description"
    string_value = "1111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column13" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name
  column   = "column13"

  fields {
    field_name = "description"
    string_value = "1111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column14" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name
  column   = "column14"

  fields {
    field_name = "description"
    string_value = "111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column15" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name
  column   = "column15"

  fields {
    field_name = "description"
    string_value = "1111111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}

resource "google_data_catalog_tag" "data_catalog_tag_column_description_mock_column_column16" {
  parent   = local.parent_user_info
  template = google_data_catalog_tag_template.column_description_tag_template.name
  column   = "column16"

  fields {
    field_name = "description"
    string_value = "111111111111111"
  }

  fields {
    field_name = "is_hashed_pii"
    bool_value = false
  }
  
  fields {
    field_name = "is_key"
    bool_value = false
  }
}


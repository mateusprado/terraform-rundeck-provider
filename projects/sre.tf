provider "rundeck" {
    url = "http://127.0.0.1:4440/"
    api_version = "34"
    auth_token = "tCsyjEMwr7uhmd6EGUKon350uV6bqgdf"
  
}

resource "rundeck_project" "sre_project" {
  name = "sre"
  description = "rundeck project"

  resource_model_source {
      type = "file"
      config = {
          format = "resourcexml"
          file = "/var/rundeck/projects/sre/resources.xml"
      }
  }
}

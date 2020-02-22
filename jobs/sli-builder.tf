provider "rundeck" {
    url = "http://127.0.0.1:4440/"
    api_version = "34"
    auth_token = "tCsyjEMwr7uhmd6EGUKon350uV6bqgdf"
  
}

resource "rundeck_job" "sli-builder" {
    name = "sli-builder"
    project_name = "sre"
    description = "a fuck job for sre team"
    
    command {
        shell_command = "ls -l /etc/rundeck"
    }
  
}

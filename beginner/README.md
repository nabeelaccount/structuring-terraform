# Simple deployment of Terraform

## Why different environment folders?
Testing changes on the same code base as the production environment is a receipie for disaster. You will not have any freedome to test and code changes without the concern of breaking production

## Why different folders for each resource?
Each resource is self-contained in its own folder. This is to ensure each resource has it's own terraform state file. There are many benefits of separating the terraform state files including accidentally deleting a resource from the state, importing the wrong resources or worse case deleting/corrupting the entire state file. By creating this separations you are limiting the blast redius.
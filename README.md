# Structuring Terraform Project

There are a number of ways of structuring your terraform project. Whilst there is no set standard by terraform, the three methods demonstrate how simple, flexible and complex a terraform project can be.

The simplicity, complexity and flexibility on how you can create a terraform project is broken down in this repository by

1 - Beginner
2 - Intermdiate
3 - Advance


## Beginner
We set up a simple project broken down by environments and resource types.

limitation 
- it involves a lot of duplicating resources and copy pasting across environment.

## Intermdiate
We utlise the beginners project and create modules. Modules are an effective way to organise your prject.

limitation
- Any changes to the modules will effect all envionments even if this is not a desired effect.
- Example of above: updating/changing a module to test in development env will also change production even if you only wanted to test the changes in dev. A temp solution is to create a duplicate mmodule just for testing.
- You're still tied down to a mono-repository approach.
- Your respository is now a single point of failure - deletion, curruption etc
- Having many developers working on the same project may slow down the process

## Advance
The biggest change here is each terraform module will have it's own git repository.
The biggest benefits is using git tags and version control for the modules.

The disadvantage of using this method is it can quickly become overwhelming if you have a large number of modules. This is especially true if you have a large team of engineers working on the infrastructure code. To limit the number of repositories, consider grouping relatable infrastucture tools that are required to be deployed in block, together. A good example is VPC, Subnet and Internet Gateway.


## Summary
Overall, intermediate may be the best tool if the infrastructure is maintained by a small team or a single person. As the team grows with different people working on different projects or you have multiple client projects, the advance setup using individual repositories and espcially version control tags, may be the best tool.



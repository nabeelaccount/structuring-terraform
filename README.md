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
s

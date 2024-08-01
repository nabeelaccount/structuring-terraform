# Infrastructure based on modules

Breaking down your resources into modules that can be called and utlised across different environments. This removes the need for duplicate code across environments.

Due to this setup's limitations, if you require to update your module for a specific env, rather than across all environments, you will need to create an update a duplicate module e.g. vpc-v2 and point the environment in question to this new module folder.

This project has created a vpc-v2 module which enables DNS hostname and DNS resolution. The module is called by the development env only leaving the production env free from the change. A good choice for testing.

limitations
- Changing a module in any way will directly change all resources in the environment folder calling that module.
- Solution to this problem is to create multiple copies of the same module and have your resources pointing to the copy you desire
- e.g. vpc, vpc-v2, vpc-v3

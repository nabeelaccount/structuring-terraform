# Infrastructure based on modules

limitations
- Changing a module in any way will directly change all resources in the environment folder calling that module.
- Solution to this problem is to create multiple copies of the same module and have your resources pointing to the copy you desire
- e.g. vpc, vpc-v2, vpc-v3
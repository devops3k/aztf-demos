# Refactoring Terraform Code
This repo is based on loosely inspired by https://github.com/esker-software/terraform-refactoring

## Refactor monolithic code
   
1. Predeployed Infrastructure
    - import & state rm / mv
    - *moved* blocks
2. New Infrastructure
    - DRY (Don't Repeat Yourself)
    - [Atomic](https://dev.to/macunha/terraform-modules-atomic-design-3i7m)

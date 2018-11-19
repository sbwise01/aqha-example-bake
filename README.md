# aqha-example-bake
A packer based bake of aqha-example-web-app into an AWS machine image.

## Bake steps
1. Run `berks vendor chef/cookbooks` to download all cookbooks to local directory
1. Run `packer build packer.json` to bake AMI
1. Run `rm -rf chef/cookbooks/*` to cleanup
 
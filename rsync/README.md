# rsync

Use rsync to deploy build artifacts to a server via ssh

### Information

* path: `erdii/actions/rsync@master`
* secrets:
	* **PRIVATE_KEY**: ssh private key file content
	* **PRIVATE_KEY**: ssh public key file content
* environment variables:
	* **HOST**: remote hostname or ip
	* **USER**: remote username
	* **IN_PATH**: path of build artifact, eg: `build/` or `build/artifact.tar.gz`
	* **OUT_PATH**: target path on remote

### Usage

```
action "deploy" {
  uses = "erdii/actions/rsync@master"
  secrets = ["PUBLIC_KEY", "PRIVATE_KEY"]
  env = {
    USER = "page-deployer"
    HOST = "my.page.host"
    IN_PATH = "build/"
    OUT_PATH = "/var/www"
  }
}
```
# medium-git-delete-local-branches


### Setup

```sh
./setup.sh
```

### Remove branches without upstream
```sh
./removeNoUpstreamBranches.sh
```


### Cleanup

```sh
# Delete branches without upstream
./removeNoUpstreamBranches.sh

## Delete the remaining branch
git push <remote_name> --delete <branch_name>
git push origin --delete branch1

## "-D" is an alias for "--delete --force"
git branch -D <branch_name>
git branch -D branch1
```
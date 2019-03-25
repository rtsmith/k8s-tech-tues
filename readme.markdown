Handy:
```$ kubectl run curl --image=radial/busyboxplus:curl -i --tty --rm```

## Skaffold
```$ skaffold run```

### Docker<-->Git tagging
- If the workspace is on a Git tag, that tag is used to tag images
- If the workspace is on a Git commit, the short commit is used
- It the workspace has uncommited changes, a -dirty suffix is appended to the image tag


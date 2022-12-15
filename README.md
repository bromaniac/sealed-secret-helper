# Usage:
Put your key and value separated by a tab in a file. One pair per line.

Then:

```
./ssh.awk -v NAMESPACE=foo SECRET_NAME=bar < data.txt > secret.yaml
kubeseal -f secret.yaml -n foo -o yaml
```

Your sealed secret file will be printed to stdout.

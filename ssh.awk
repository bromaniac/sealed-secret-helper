#!/bin/awk -f

BEGIN {
print "apiVersion: v1"
print "data:"
}

{printf "  " $1 ": "}
{"echo " $2 " | tr -d '\n' | base64 -w0 -" | getline b64}
{print b64}
{close("echo " $2 " | tr -d '\n' | base64 -w0 -")}

END {
print "kind: Secret"
print "metadata:"
print "  name: " SECRET_NAME
print "  namespace: " NAMESPACE
print "type: Opaque"
}

#!/bin/sh

if git commit -v --dry-run | grep 'console.log' >/dev/null 2>&1
	then
	  echo "Remove the --> console.log <-- string and try again."
	  exit 1
fi

if git commit -v --dry-run | grep 'test' >/dev/null 2>&1
	then
	  echo "Remove the --> test <-- string and try again."
	  exit 2
fi

if git commit -v --dry-run | grep '<f:debug>' >/dev/null 2>&1
	then
	  echo "Remove the --> <f:debug> <-- string and try again."
	  exit 3
fi

if git commit -v --dry-run | grep 'var_dump' >/dev/null 2>&1
	then
	  echo "Remove the --> var_dump <-- string and try again."
	  exit 3
fi

exit 0

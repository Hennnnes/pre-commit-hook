# pre-commit.sh
git stash -q --keep-index

# Test prospective commit

# Test for console.log
FILES_PATTERN='\.(js)(\..+)?$'
FORBIDDEN='console.log'
git diff --cached --name-only | \

grep -E $FILES_PATTERN | \

GREP_COLOR='4;5;37;41' xargs grep --color --with-filename -n $FORBIDDEN && echo 'COMMIT REJECTED Found "$FORBIDDEN" references. Please remove them before commiting'

# undo stash
git stash pop -q

# stop commit
&& exit 1

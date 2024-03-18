FULL_PATH=$(</dev/stdin)
SPLIT_PATH=$(echo $FULL_PATH | tr "/" "\n")
for N in $SPLIT_PATH
do
  NAME=$N
done
echo "-A -s $NAME -c $FULL_PATH"

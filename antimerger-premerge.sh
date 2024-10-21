#! /bin/sh

printf "\n"
printf "This antimerger pre-merge hook has been invoked because a three-way merge operation is about to happen.\n"
printf "This operation will likely create non-linear history, and that is why you are seeing this message.\n\n"

printf "If you are pulling a branch, change the pull strategy to rebase using:\n\n"
printf "      git config pull.rebase true\n\n"

printf "If you are merging a branch, first rebase the source on the target and then merge using:\n\n"
printf "      git switch your_source\n"
printf "      git rebase your_target\n"
printf "      git switch your_target\n"
printf "      git merge --ff-only your_source\n\n"

printf "WARNING: Before anything you have to abort the ongoing merge with:\n\n"
printf "      git merge --abort\n\n"

exit 1
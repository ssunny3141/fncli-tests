#! /usr/bin/env bash

set -eou pipefail
testrepo="test"
fnlocal="/Users/sunny/Functions/cli/fn"

runtimes=(ruby ruby2.7 python python3.8 python3.7 java java11 java8 node node14 node11 go go1.15)

cd ${testrepo} 

for runtime in ${runtimes[@]}; do
	echo $runtime
	pushd "${runtime}" > /dev/null

	deploy_cmd="${fnlocal} deploy --app demo-app"
	echo ">" $deploy_cmd
	eval $deploy_cmd	

	invoke_cmd="${fnlocal} invoke demo-app ${runtime}"
	echo ">" $invoke_cmd
	eval $invoke_cmd

	popd > /dev/null
	echo -e '\n'
	echo -e '===============================================================\n'
	echo -e '\n'
done


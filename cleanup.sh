#! /usr/bin/env bash

set -eou pipefail
testrepo="test"

runtimes=(ruby ruby2.7 python python3.8 python3.7 java java11 java8 node node14 node11 go go1.15)

#create repo for testing
mkdir -p ${testrepo} 

cd ${testrepo} 

for runtime in ${runtimes[@]}; do
	echo $runtime
	if [ -d "$runtime" ]; then
		echo -e "Cleaning dir: ${runtime}"
		rm -rf "${runtime}"
	fi
	echo -e '===============================================================\n'
	echo -e "\n"
done


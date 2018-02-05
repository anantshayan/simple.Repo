##pinging servers is
#!/usr/bin/bash
for i in `cat file`
do
		ping  -c1 $i >> /dev/null
		if [ $? -eq 0 ]
		then
			echo "$i is pinging"
		else
			echo "$i is not pinging"
		fi
done

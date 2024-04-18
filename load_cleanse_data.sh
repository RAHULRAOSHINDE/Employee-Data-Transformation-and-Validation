#Store the cleansed data in employee.txt on local system in the path /root/Desktop/EDTV/Dataset.

#Load employee_initial.txt present in local system to Hadoop.

hadoop fs -copyFromLocal /root/Desktop/EDTV/Dataset/employee_initial.txt /user/source

#Perform cleansing to retain only one type of delimiter (,) and one occurrence of , as delimiter.Also remove duplicate records.
 
cat /root/Desktop/EDTV/Dataset/employee_initial.txt| tr ":" ","|tr -s "," | sort -u |uniq > /root/Desktop/EDTV/Dataset/employee.txt

#remove the source file

#rm -rf employee_initial.txt

#Load employee.txt from local filesystem to Hadoop

hadoop fs -copyFromLocal /root/Desktop/EDTV/Dataset/employee.txt /user/employee
echo Please Enter Student name: 
read name
while ! [[ $name =~ ^-?[[:alpha:]]+$ || $name =~ " " ]]; do
	echo "Please enter a valid name: "
	read name
done


echo Please Enter Student ID: 
read sid
while ! [[ $sid =~ ^-?[[:digit:]]+$ ]]; do
	echo "Please enter a valid student ID: "
	read sid
done


echo Please Enter Gender: 
read gender
while ! [[ $gender =~ ^-?[[:alpha:]]+$ ]]; do
	echo "Please specify a valid gender type: "
	read gender
done


echo Please Enter Assignment mark:
read assmark
while ! [[ $assmark -ge 0 && $assmark -le 20 ]]; do
	echo "Please enter a valid input within the range of 0-20: "
	read assmark
done	


echo Please Enter Lab Participation mark:
read labpartmark
while ! [[ $labpartmark -ge 0 && $labpartmark -le 10 ]]; do
	echo "Please enter a valid input within the range of 0-10: "
	read labpartmark
done

echo Please Enter Quiz mark:
read quizmark
while ! [[ $quizmark -ge 0 && $quizmark -le 10 ]]; do
	echo "Please enter a valid input within the range of 0-10: "
	read quizmark
done


echo Please Enter Midterm mark:
read midtermmark
while ! [[ $midtermmark -ge 0 && $midtermmark -le 30 ]]; do
	echo "Please enter a valid input within the range of 0-30: "
	read midtermmark
done

echo Please Enter Final mark:
read finalmark
while ! [[ $finalmark -ge 0 && $finalmark -le 30 ]]; do
	echo "Please enter a valid input within the range of 0-30: "
	read finalmark
done


total=`expr $assmark + $labpartmark + $quizmark + $midtermmark + $finalmark`



if [[ $total -gt 90 && $total -le 100 ]]; then
	finalgrade="A"
	
elif [[ $total -eq 90 ]]; then
	finalgrade=“A-”
	
elif [[ $total -gt 80 && $total -lt 90 ]]; then
	finalgrade="B"

elif [[ $total -eq 80 ]]; then
	finalgrade="B-"

elif [[ $total -gt 70 && $total -lt 80 ]]; then
	finalgrade="C"

elif [[ $total -eq 70 ]]; then
	finalgrade="C-"

elif [[ $total -gt 60 && $total -lt 70 ]]; then
	finalgrade="D"

elif [[ $total -lt 60 ]]; then
	finalgrade="F"
fi

echo  Dear $name your final grade is $finalgrade

if [[ $total -gt 90 && $total -le 100 ]]; then
	echo Congratulations You did a Wonderful Job  
	
elif [[ $total -eq 90 ]]; then
	echo Congratulations 
	
elif [[ $total -gt 80 && $total -lt 90 ]]; then
	echo Good job

elif [[ $total -eq 80 ]]; then
	echo Good job keep it up next time

elif [[ $total -gt 70 && $total -lt 80 ]]; then
	echo You did good

elif [[ $total -eq 70 ]]; then
	echo You did ok

elif [[ $total -gt 60 && $total -lt 70 ]]; then
	echo Do better next time

elif [[ $total -lt 60 ]]; then
	echo You need to do better next time
fi


 
echo "Student Name,     Student Number,    Gender,     Assignment Mark, Lab Participation,    Quiz Mark,     Midterm Mark,     Final Mark,     Overall Marks,     Final Grade" >> OSSGrades.csv


echo "$name", "$sid", "$gender", "$assmark", "$labpartmark", "$quizmark", "$midtermmark", "$finalmark", "$total", "$finalgrade" >> OSSGrades.csv





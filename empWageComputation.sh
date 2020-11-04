#! /bin/bash
#Welcome Messege
echo "Welcome to Employee Wage Computation Program!"

#Check employee present or absent
attendence()
{
        attendence=$((RANDOM % 2))

        if [ $attendence -eq 1 ]
        then
                return 1        #Present
        else
                return 0        #Absent
        fi
}

wageHour=20
fullDay=8
halfDay=4
totalWage=0
dailyWage=0

echo "Day No.       DailyWage       TotalWage   "
for (( i=1; i<=30; i++ ))
do
        attendence
        n=$?
        if [ $n -eq 1 ]
        then
                t=$((RANDOM % 2))
                if [ $t -eq 1 ]
                then
                        dailyWage=`expr $fullDay \* 20`
                else
                        dailyWage=`expr $halfDay \* 20`
                fi
        else
                dailyWage=0
        fi
	totalWage=`expr $totalWage + $dailyWage`
done

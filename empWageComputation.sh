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


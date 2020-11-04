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

echo "Tryb pracy pompy wybierz : "
echo "
	Modes :
		3 -Quiet
		4 - Balanced
		5 - Performancei
podaj :"
read;
sudo opencorsairlink --device 0 --pump mode=${REPLY}
echo "Ustaw prędkość wiatraków :"
echo "
	Modes:
		0 - Fixed PWM (requires to specify the PWM)
		1 - Fixed RPM (requires to specify the RPM)
		2 - Default
		3 - Quiet
		4 - Balanced
		5 - Performance
		6 - Custom Curve
podaj :"
read;
sudo opencorsairlink --device 0 --fan channel=0,mode=${REPLY}
sudo opencorsairlink --device 0 --fan channel=1,mode=${REPLY}
sudo opencorsairlink --device 0

global key
InitKeyboard();
speed = 35;
turnTime = 1;
turnDelay = 4;
stopTime = 2;
redDelay = 0;

while 1
        %manual controls
        switch key
            case 0
                brick.StopMotor('A');
                brick.StopMotor('B');
                brick.StopMotor('C');
            case 'w'
                brick.MoveMotor('A', speed);
                brick.MoveMotor('B', speed);
            case 's'
                brick.MoveMotor('A', -speed);
                brick.MoveMotor('B', -speed);
            case 'a'
                brick.MoveMotor('A', speed);
                brick.MoveMotor('B', -speed);
            case 'd'
                brick.MoveMotor('A', -speed);
                brick.MoveMotor('B', speed);   
            case 'q' %open
                brick.MoveMotor('C', 15);
            case 'e' %close
                brick.MoveMotor('C', -25);
            case 'v'
                break;
        end

end
CloseKeyboard();
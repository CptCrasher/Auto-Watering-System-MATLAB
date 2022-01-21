clear all; close all;
% Initialize type and port of arduino
a = arduino('COM4', 'uno');
stop = false;
fullstop = false;

while ~fullstop

        while ~stop
            % Read current voltage value & display voltage in console
            voltage = readVoltage(a,'A1');
            disp(voltage);
            % If the voltage produced by mositure sensor high, turn on pump
            if voltage > 2.6
                disp("Soil is dry...Watering Now");
                writeDigitalPin(a,'D2',1);
                pause(2);
            end
            % If voltage produced is less than 2.6, turn off pump
            if voltage <= 2.6
            disp("Soil is watered");
            writeDigitalPin(a,'D2',0);
            stop = true;
            end
        end
    %If button is pressed, turn off system
    if readDigitalPin(a,'D6') == 1
        disp("System is off.");
        fullstop = true;
    else
        stop = false;
    end
end
writeDigitalPin(a,'D2',0);
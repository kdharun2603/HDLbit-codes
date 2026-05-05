// A heating/cooling thermostat controls both a heater (during winter) and an air conditioner (during summer). Implement a circuit that will turn on and off the heater, air conditioning, and blower fan as appropriate.


module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 
assign heater = mode&too_cold; 
assign aircon = ~mode&too_hot;
assign fan = heater | aircon | fan_on;
endmodule

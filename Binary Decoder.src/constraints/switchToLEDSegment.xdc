################################################################################
# Constraints: Switch to lED Segment
# 
# Description: Contains switching functionality for each DIP switch connecting
#              to a single LED segment on the 7 Segment LED display
################################################################################

##### Input data lines #########################################################
# Set input data line pins
set_property PACKAGE_PIN G22 [get_ports {value[7]}]
set_property PACKAGE_PIN G21 [get_ports {value[6]}]
set_property PACKAGE_PIN D21 [get_ports {value[5]}]
set_property PACKAGE_PIN E21 [get_ports {value[4]}]
set_property PACKAGE_PIN D22 [get_ports {value[3]}]
set_property PACKAGE_PIN E22 [get_ports {value[2]}]
set_property PACKAGE_PIN A21 [get_ports {value[1]}]
set_property PACKAGE_PIN B21 [get_ports {value[0]}]
# Set input data line voltage standards
set_property IOSTANDARD LVCMOS33 [get_ports {value[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {value[7]}]

##### Output data lines ########################################################
# Set output 7Seg data line pins
set_property PACKAGE_PIN P5 [get_ports {sevenSegmentData[7]}]
set_property PACKAGE_PIN M6 [get_ports {sevenSegmentData[6]}]
set_property PACKAGE_PIN L6 [get_ports {sevenSegmentData[5]}]
set_property PACKAGE_PIN L5 [get_ports {sevenSegmentData[4]}]
set_property PACKAGE_PIN M5 [get_ports {sevenSegmentData[3]}]
set_property PACKAGE_PIN M3 [get_ports {sevenSegmentData[2]}]
set_property PACKAGE_PIN N4 [get_ports {sevenSegmentData[1]}]
set_property PACKAGE_PIN P4 [get_ports {sevenSegmentData[0]}]
# Set output 7Seg data line voltage standards
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentData[7]}]

##### Output enable lines ######################################################
# Set output 7Seg enable line pins
set_property PACKAGE_PIN L4 [get_ports {sevenSegmentEnable[3]}]
set_property PACKAGE_PIN P1 [get_ports {sevenSegmentEnable[2]}]
set_property PACKAGE_PIN R1 [get_ports {sevenSegmentEnable[1]}]
set_property PACKAGE_PIN N3 [get_ports {sevenSegmentEnable[0]}]
# Set output 7Seg enable line voltage standards
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentEnable[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentEnable[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentEnable[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sevenSegmentEnable[3]}]

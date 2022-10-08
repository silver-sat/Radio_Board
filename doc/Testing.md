# Board Testing Instructions
SilverSat Ltd.
2022-08-26

Last modified 2022-10-08

# 1. Check Components
Inspect all of the components to verify that none are missing or oriented incorrectly. If any occurs, the component must be re-installed using hand soldering.

# 2. Check Soldering
After soldering all of the surface-mount and through-hole components, carefully check all of the connections to ensure there is no solder bridging or “tombstoning” (when a surface-mount passive component, such as a capacitor, inductor, or resistor, flips vertically due to solder surface tension). Remove solder bridges by dragging a hot soldering iron between the bridged connections to re-melt and separate them. You may need a very fine tip to do this. Fix any tombstoned components by re-soldering them by hand.

# 3. Check 3.3V Power Supply
Use an ohmmeter to test between TP6, 3.3V Protected zone, and ground. If there is excessively high resistance on 3.3V Protected, check U4, the resistors, and L12 to ensure thay can conduct electricity. If they do not conduct, replace them.
    
* The capacitors should also be checked, but as of 2022-08-26 no method is specified.

# 4. Load the Bootloader
TBD

# 5. Load the Test Code
Install the SilverSat Radio Board definitions given in INSTALL.md. Open the test code and upload it to the board using the USB port.
* Since this code has not yet been written, no further test steps are available. However, this code may have tests for serial and radio transceive.

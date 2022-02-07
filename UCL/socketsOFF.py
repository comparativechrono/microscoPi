import energenie as e
import time
 
# Turn socket ID 1 off and ID 2 on
e.switch_off(1)
time.sleep(2)
e.switch_on(2)
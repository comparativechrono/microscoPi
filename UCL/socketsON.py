import energenie as e
import time
 
# Turn socket ID 1 on and ID 2 off
e.switch_on(1)
time.sleep(2)
e.switch_off(2)
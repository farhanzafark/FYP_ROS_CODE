# FYP_ROS_CODE  

## FYP Project Files:  

| --- | --- |
|**src/metal_line_follower:** |   project code folder  |
|**msg:**|   all different messages being used for carrying sensor input  |
|**scripts/central_processor.py:**|    gets all messages from sensors, and carries out decision making for robot movement  |
    
    
   + **scripts/proximity_sense.py:**    reads proximity sensor data (line following) and sends information using proximityMsg.msg  
    
    
   + **scripts/rfid_sense.py:**    reads rfid sensor data (mapping) and sends information using rfidMsg.msg  
    
    
   + **scripts/ultrasonic_sense.py:**    reads ultrasonic sensor data(obstacle) and sends information using ultrasonicMsg.msg  
    
    
   + **scripts/sim_ut_sense.py:**    generates ultrasonic sensor readings to simulate and test response without hardware   
    
    
   + **scripts/sim_rfid_sense.py:**    generates rfid readings to simulate and test response without hardware  
    
    
   + proximity sensor readings are simulated through proximity_sense.py.  
    
    
                                    

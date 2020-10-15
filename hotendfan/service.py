if __name__ == '__main__':
    import os
    import time
    import RPi.GPIO as GPIO
    import systemd.daemon

    GPIO.setmode(GPIO.BOARD)
    GPIO.setup(16, GPIO.IN, pull_up_down=GPIO.PUD_UP)

    systemd.daemon.notify('READY=1')

    while True:
        if GPIO.input(16) == GPIO.HIGH:
            os.system('/usr/bin/gpio -1 pwm 33 1023')
        else:
            os.system('/usr/bin/gpio -1 pwm 33 600')

        time.sleep(0.1)

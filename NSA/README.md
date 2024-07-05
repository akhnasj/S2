
## `chmod` 
Changes permissions of a file or directory
### 1. Numeric Mode (Octal Representation) :
Permissions are represented by three digits (0-7) for each user type (**owner,  group,  others**).

*Read* : **4** | *Write* : **2** | *Execute* : **1**

- `chmod 644 filename.txt` : This sets the permissions to -rw-r--r--.

- `chmod 660 filename.txt` : Others no permissions
- `chmod 777 filename.txt` : All groups all permission

### 2. Using Symbolic Representation :
       chmod [user][permission][permission] file
User Classes : **u, g, o, a** | Operation : **+, -, =** | Permission Attributes : **r, w, x**

- `chmod g+rw filename.txt`
- `chmod u-x filename.txt`
- `chmod 0=rx filename.text`

- `chmod +x file`



## `chown`
Changes the owner of file and group of a file or directory

- `chown john:staff file` : change the owner to 'John' and group
- `chown john file` : change only owner
- `chown :staff file` : change only group

## `chgrp`
Changes the group of a file or directory

- `chgrp staff file`




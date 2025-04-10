# **Project Description**

This document showcases my ability to manage file permissions on a Linux system using the `ls -la` and `chmod` commands. I will demonstrate how to check existing permissions, interpret permission strings, and adjust permissions to achieve desired access control.

**Check File and Directory Details:**

The `ls -la` command provides detailed information about files and directories, including their permissions. Here's an example of the output:

```
drwxr-xr-x 2 researcher2 researcher2 4096 Mar 22 14:00 drafts/
-rw-rw-rw- 1 researcher2 researcher2 1024 Mar 22 14:00 project_k.txt
-rw-r--r-- 1 researcher2 researcher2  512 Mar 22 14:00 project_m.txt
-rw-rw-r-- 1 researcher2 researcher2  768 Mar 22 14:00 project_r.txt
-rw-rw-r-- 1 researcher2 researcher2  896 Mar 22 14:00 project_t.txt
-rw------- 1 researcher2 researcher2  256 Mar 22 14:00 .project_x.txt
```

**Describe the Permissions String:**

The leftmost character indicates the file type (d for directory, - for regular file). The next nine characters represent the permission for user (owner), group, and others (read, write, and execute permissions for each).  For example, in "-rw-r--r--", the first three characters define the user permissions:

* `-`: indicates no permission (e.g., no execute permission for the user in this case)
* `r`: signifies read permission
* `w`: signifies write permission

The following three characters represent group permissions, and the last three represent permissions for others.

**Change File Permissions:**

The `chmod` command allows modifying file permissions. Its syntax is:

```
chmod permission_changes filename
```

* `permission_changes`: This specifies the adjustments to be made using symbols like `+` (add permission), `-` (remove permission), or `=` (set permission).
* `filename`: This refers to the file or directory whose permissions need to be changed.

For example, to grant read-only access to everyone for `project_m.txt`, the command would be:

```
chmod u-w,g-w,o-rwx project_m.txt
```

This command removes write permission for the user (u) and group (g), and removes all permissions for others (o).

**Change File Permissions on a Hidden File:**

Hidden files and directories typically begin with a dot (.). To view them, use `ls -la`. Modifying permissions for hidden files follows the same process as for regular files. For instance, to grant the group write permission to the hidden file `.project_x.txt`, you would use:

```
chmod g+w .project_x.txt
```

**Change Directory Permissions:**

The process for changing directory permissions is similar to changing file permissions. However, modifying directory permissions can also affect permissions of files within that directory. Here's an example granting execute permission for everyone to access the `drafts` directory:

```
chmod o+x drafts/
```

**Summary:**

This document demonstrates my competence in managing file permissions on a Linux system. I can effectively check existing permissions, interpret permission strings, and adjust permissions using the `ls -la` and `chmod` commands to achieve granular access control for files and directories. This is crucial for ensuring data security and user access management within a Linux environment.

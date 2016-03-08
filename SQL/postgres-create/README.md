If there is an existing database running in the specified folder ("data" as default), it will be deleted.

Initializing the database
-------------------------

### Default settings
To install with default settings, just run `make`. This installs the postgres database in
the folder "data", and creates a new database called "course_results".

### Custom settings

Run `make dir=<preferred directory> db=<database name> custom`. For example,
to duplicate the default settings, run
        
        make dir=data db=course_results custom


What did I just do?
-------------------

If there was an existing server running in the specified folder, you removed it and stopped it.

1. You created the postgres environement, the cluster, the big shebang. And it is all in that folder you wanted
1. You created a user with a password.

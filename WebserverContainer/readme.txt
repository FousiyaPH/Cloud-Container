In windows, Internet Information Services(IIS) is used for hosting web applications and act as a web server. There are different tags available for getting IIS docker images. 

User can run webserver-container-script file inside powershell.  

Inside script, host machine will pull microsoft/iis:nanoserver and then will map container port number 80 to host machine port number 8080. This will enable host machine to access container webserver using localhost:8080/
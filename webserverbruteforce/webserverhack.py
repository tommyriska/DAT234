import xmlrpc.client

s = xmlrpc.client.ServerProxy("http://128.39.145.79:8080")

for i in range(97, 123):
    complete = False
    for j in range(97, 123):
        password = chr(i) + chr(j)
        success = s.hack_easy(password, "Workgroups 6")
        print(success, ": ", password)

        if(success=="success"):
            complete = True
            break

    if(complete):
        break

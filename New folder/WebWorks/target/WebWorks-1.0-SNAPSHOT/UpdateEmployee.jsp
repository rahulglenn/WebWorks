<html>
    <head>
        <style>
            table
            {
                border: medium solid #660000;
            }
            thead
            {
             font-size:15px;
             font-family: verdana;
             background-color:burlywood;
             font-weight:lighter
            }
            tbody
            {
             background-color:bisque;
             font-size:10px;
             font-family: verdana;
             font-weight: bold
            }
            input
            {
                font-family: Verdana;
                font-size:10px;
                font-style: normal;
            }
            select
            {
                font-family: Verdana;
                font-size:10px;
                font-style: normal
            }
        </style>

        <script type="text/javascript">
          function getEID()
          {
           var ob=new XMLHttpRequest();

           ob.onreadystatechange=function ss()
           {
            if(ob.readyState==4)
            {
              document.getElementById("eid").innerHTML=ob.responseText;
            }
           }
           ob.open("GET","EIDLoad",false);
           ob.send();
           return true;
          }

          function getEmpDetails(str)
          {
           var ob=new XMLHttpRequest();

           ob.onreadystatechange=function ss()
           {
            if(ob.readyState==4)
            {
              var details=ob.responseText.split("||");

              document.uform.fname.value=details[0];
              document.uform.lname.value=details[1];
              document.uform.gender.value=details[2];
              document.uform.dob.value=details[3];
              document.uform.email.value=details[4];
              document.uform.mobile.value=details[5];
              document.uform.city.value=details[6];
              document.uform.state.value=details[7];
            }
           }
           var path="GetDetails?eid="+str;

           ob.open("GET",path,false);
           ob.send();
           return true;
          }
        </script>
    </head>

    <body onload="getEID()">
        <form name="uform" action="Update">
            <table width="30%" cellspacing="2" align="center" border="0">
                <thead>
                    <tr>
                        <th colspan="3">Update Form</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Emp ID</td>
                        <td>:</td>
                        <td>
                            <div id="eid">
                                
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>Firstname</td>
                        <td>:</td>
                        <td><input type="text" name="fname" size="20" disabled="true"></td>
                    </tr>
                    <tr>
                        <td>Lastname</td>
                        <td>:</td>
                        <td><input type="text" name="lname" size="20" disabled="true"></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>:</td>
                        <td>
                            <input type="text" name="gender" size="20" disabled="true"/>
                        </td>
                    </tr>
                    <tr>
                        <td>DOB</td>
                        <td>:</td>
                        <td><input type="text" name="dob" size="20" disabled="true"></td>
                    </tr>
                    <tr>
                        <td>E-mail</td>
                        <td>:</td>
                        <td><input type="text" name="email" size="20"></td>
                    </tr>
                    <tr>
                        <td>Mobile</td>
                        <td>:</td>
                        <td><input type="text" name="mobile" size="20"></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td>:</td>
                        <td><input type="text" name="city" size="20"></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td>:</td>
                        <td><input type="text" name="state" size="20"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit"  value="submit">
                        </td>
                        <td>
                            <input type="reset" value="reset">
                        </td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>

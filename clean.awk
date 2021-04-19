NR==FNR { 
          cont[$0]="1";
          next 
        } 
        { 
          split($0,map,"/");
          if (cont[map[5]]!="1") { 
            "cat /var/run/graydock/"map[5]".pid" | getline proc;
            system("/usr/local/lib/graydock/prockill "proc)
            system("rm -f /var/log/graydock/"map[5]);
            system("rm -f /var/run/graydock/"map[5]".pid"); 
           }
         }

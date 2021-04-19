NR==FNR { 
          split($0,map,"/");
          cont[map[5]]="1";
          next 
        } 
cont[$0]!="1" { 
          "cat /var/run/graydock/"$0".pid" | getline proc;
          print proc
          system("kill -9 "proc);
          "cat /var/run/graydock/"$0"-tail.pid" | getline proc;
          system("kill -9 "proc);
          system("rm -f /var/log/graylog/"$0);
          system("rm -f /var/run/graylog/"$0".pid"); 
         }

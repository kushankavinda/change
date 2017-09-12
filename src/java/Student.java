
public class Student {
    public static void main(String args[]) {
        String key="sport";    
            for(int j=key.length(); j>1 ;j--){           
                for(int i=j-1;i>0;i--){                               
               // do{ 
                    if(key.substring(j-1,j).equals(key.substring(i-1,i))){
                       // System.out.println("here");
                        if(j==key.length()){
                           key=key.substring(0,key.length()-1);
                           --j;
                           //System.out.println("last");
                        }else{
                            if(i==1){
                                key=key.substring(0,j-1)+key.substring(j,key.length());
                               
                                --j;
                            }else{
                                key=key.substring(0,j-1)+key.substring(j,key.length());
                                --j;
                                System.out.println(j);
                            }
                          // System.out.println("middle");
                        }
                    }else{
                         key=key;                        
                    }
                  // --i;
              //  }while(i==1); 
                }
            }
            System.out.println(key);
    }
}

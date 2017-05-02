
/*
       gcc [-c|-S|-E] [-std=standard]
           [-g] [-pg] [-Olevel]
           [-Wwarn...] [-pedantic]
           [-Idir...] [-Ldir...]
           [-Dmacro[=defn]...] [-Umacro]
           [-foption...] [-mmachine-option...]
           [-o outfile] [@file] infile...
           */
 /*          
[mysql01@localhost day01]$ locate mysql.h
/usr/include/Qt/qsql_mysql.h
/usr/include/QtSql/qsql_mysql.h
/usr/include/mysql/mysql.h
/usr/share/apps/quanta/doc/php/ref.mysql.html
/usr/share/doc/python-sqlalchemy-0.5.5/doc/reference/dialects/mysql.html
/usr/share/doc/rsyslog-5.8.10/ommysql.html
/usr/share/doc/rsyslog-5.8.10/rsyslog_mysql.html   
*/        

/*
[mysql01@localhost day01]$ 
[mysql01@localhost day01]$ locate mysqlclient
/usr/lib64/mysql/libmysqlclient.a
/usr/lib64/mysql/libmysqlclient_r.a
[mysql01@localhost day01]$ 
*/





/*
MYSQL *mysql_init(MYSQL *mysql) 

*/

/*
问题1
/usr/lib64/mysql/libmysqlclient.a(net_serv.cc.o):(.data.DW.ref.__gxx_personality_v0[DW.ref.__gxx_personality_v0]+0x0): undefined reference to `__gxx_personality_v0'
/usr/lib64/mysql/libmysqlclient.a(password.c.o): In function `scramble_323':



问题2
//动态加载动态库

问题3 
//线程库


问题4
/usr/lib64/mysql/libmysqlclient.a(my_getsystime.c.o): In function `my_getsystime':
/pb2/build/sb_0-12734909-1406113305.48/rpm/BUILD/mysqlcom-pro-5.6.20/mysqlcom-pro-5.6.20/mysys/my_getsystime.c:44: undefined reference to `clock_gettime'
collect2: ld 返回 1
*/

//问题5  连接rt库
// gcc  dm01_hello.c -o dm01_hello  -I/usr/include/ -L/usr/lib64/mysql  -lmysqlclient   -lm -lrt -ldl  -lstdc++ -lpthread 



#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mysql/mysql.h>


int main()
{
	
	int 	ret = 0;
	
	MYSQL 	mysql;
	MYSQL	*connect = NULL;
	
	connect = mysql_init(&mysql) ;
	if (connect == NULL)
	{
		ret = -1;
		printf("func mysql_init() err \n");
		return ret;
	}
	
	printf("func mysql_init() ok \n");
	
	mysql_close(&mysql);
	
	printf("hello...\n");
	return ret;
}







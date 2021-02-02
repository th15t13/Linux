#(wildcard ./*.c)获取当前目录下所有以.c结尾的文件名称
src=$(wildcard ./*.c)
#aa:$(src)
#	gcc $^ -o $@
#将src变量的内容中的.c替换成为.o，然后存放到obj变量中
obj=$(patsubst %.c, %.o, $(src))
aa:$(obj)
	gcc  $^ -o $@
%.o:%.c
	gcc -c $< -o $@
#伪对象：声明一个对象，与外部文件无关，每次都要重新生成（不会因为当前文件是最新的而导致不需要重新生成）
#如果有对象不管外部是否存在，每次均要执行语句，则可以声明为伪对象
.PHONY:clean
clean:
	rm -rf $(obj) test

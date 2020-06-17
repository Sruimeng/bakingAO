# bakingAO'

## 运行说明

- 需要安装cuda10(低版本的不知道行不行,只在cuda10.1和10.2上试过,9.0以上应该都可以)

- 将文件夹`bakingAO/lib64`中的libglfw.so.3 libglfw.so.3.3 liboptix_prime.so.6.5.0 文件挪到`usr/lib`文件夹下

- 进入debug文件 运行`./bakingAO` 

## 输入说明

./bakingAO [options]

  -h  | --help	帮助信息

  -i  | --infile <model_file(string)>	输入文件的地址

  -o  | --outfile <image_file(string)>	输出文件的地址

  -d  | --distance <offset(number)>	offset的数值

  -m  | --max <max_distance(muber)>	射线的的最大距离

  

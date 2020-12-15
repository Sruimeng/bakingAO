# bakingAO'

## 运行说明

- 需要安装cuda10(低版本的不知道行不行,只在cuda10.1和10.2上试过,9.0以上应该都可以)

- 将文件夹`bakingAO/lib64`中的libglfw.so.3 libglfw.so.3.3 liboptix_prime.so.6.5.0 文件挪到`usr/lib`文件夹下

- 输入命令行`apt-get install xvfb`

- 输入命令行`Xvfb :5 -screen 0 800x600x24 & export DISPLAY=:5`

- 进入debug文件 运行`./bakingAO `  测试：`./bakingAO -i ../1.glb`

## 输入说明

./bakingAO [options]

  -h  | --help	帮助信息

  -i  | --infile <model_file(string)>	输入文件的地址   必要参数

  -o  | --outfile <image_file(string)>	输出文件的前缀   必要参数

  -d  | --distance <offset(number)>	offset的数值 1-9 之间 默认为1 非必要参数

 -s  | --scale 	<model(number)>	offset的层数 1-5之间 默认为3 非必要参数

  -m  | --max <max_distance(muber)>	射线的的最大距离  10-无穷(理论上) 默认为10 非必要参数

-u  | --uvoffset <uvoffset(number)>	接缝像素的偏移 目前只有0 1 2 默认为1 非必要参数

 -f  | --sigle_img_flag <sigle_img_flag(number)>  是否输出为一张图片 0/1 默认为1(输出为一张图片) 非必要参数
  

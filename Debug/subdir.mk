################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CU_SRCS += \
../bake_kernels.cu 

CPP_SRCS += \
../bake_ao_optix_prime.cpp \
../bake_api.cpp \
../bake_filter.cpp \
../bake_sample.cpp \
../bake_to_image.cpp \
../bake_util.cpp \
../main.cpp \
../scene.cpp \
../toojpeg.cpp 

C_SRCS += \
../glad.c 

OBJS += \
./bake_ao_optix_prime.o \
./bake_api.o \
./bake_filter.o \
./bake_kernels.o \
./bake_sample.o \
./bake_to_image.o \
./bake_util.o \
./glad.o \
./main.o \
./scene.o \
./toojpeg.o 

CU_DEPS += \
./bake_kernels.d 

CPP_DEPS += \
./bake_ao_optix_prime.d \
./bake_api.d \
./bake_filter.d \
./bake_sample.d \
./bake_to_image.d \
./bake_util.d \
./main.d \
./scene.d \
./toojpeg.d 

C_DEPS += \
./glad.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.2/bin/nvcc -I/home/su/cuda-workspace/bakingAO -G -g -O0 -gencode arch=compute_75,code=sm_75 -m64 -odir "." -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.2/bin/nvcc -I/home/su/cuda-workspace/bakingAO -G -g -O0 --compile -m64  -x c++ -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.cu
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.2/bin/nvcc -I/home/su/cuda-workspace/bakingAO -G -g -O0 -gencode arch=compute_75,code=sm_75 -m64 -odir "." -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.2/bin/nvcc -I/home/su/cuda-workspace/bakingAO -G -g -O0 --compile --relocatable-device-code=false -gencode arch=compute_75,code=compute_75 -gencode arch=compute_75,code=sm_75 -m64  -x cu -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: NVCC Compiler'
	/usr/local/cuda-10.2/bin/nvcc -I/home/su/cuda-workspace/bakingAO -G -g -O0 -gencode arch=compute_75,code=sm_75 -m64 -odir "." -M -o "$(@:%.o=%.d)" "$<"
	/usr/local/cuda-10.2/bin/nvcc -I/home/su/cuda-workspace/bakingAO -G -g -O0 --compile -m64  -x c -o  "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



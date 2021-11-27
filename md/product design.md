## Wednesday 

### 视觉效果展示

### hashcat 计算中间数据展示

#### 没个节点返回的数据

##### 实时数据统计 查看数据样例

##### 当前存活的节点 查看数样例

- 需要设计方法心跳检测，统计在线的节点，在sweeney和wednesday直接定义协议

```json
{
    "success": true,
    "code": 1,
    "message": "success",
    "data": {
        "hostName": "lunas-mac.local",
        "manufacturer": "Apple Inc.",
        "model": "MacBookPro12,1",
        "serialNumber": "C17QD861FVH5",
        "firmwareDTO": {
            "manufacturer": "Apple Inc.",
            "name": "boot.efi",
            "description": "EFI64",
            "version": "427.140.8.0.0"
        },
        "motherboardDTO": {
            "manufacturer": "Apple Inc.",
            "model": "Mac-E43C1C25D4880AD6",
            "version": "1.0",
            "serialNumber": "C17QD861FVH5"
        },
        "macAddressSet": [
            "ac:bc:32:9a:b7:e5",
            "16:41:6c:2f:fa:74"
        ],
        "processorDTO": {
            "name": "Intel(R) Core(TM) i5-5257U CPU @ 2.70GHz\n 1 physical CPU package(s)\n 2 physical CPU core(s)\n 4 logical CPU(s)\nIdentifier: Intel64 Family 6 Model 61 Stepping 4\nProcessorID: bfebfbff000306d4\nMicroarchitecture: Broadwell (Client)",
            "processorId": "bfebfbff000306d4",
            "physicalPackageCount": 1,
            "physicalProcessorCount": 2,
            "logicalProcessorCount": 4,
            "nice": "0%",
            "system": "18.16%",
            "user": "42.54%",
            "wait": "0%",
            "idle": "39.3%"
        },
        "memoryDTO": {
            "memeryTotal": "8.0GB",
            "swapTotal": "5.0GB",
            "used": "5.94GB",
            "free": "2.5GB"
        },
        "jvmDTO": {
            "total": "261.0MB",
            "max": "1.77GB",
            "free": "207.0MB",
            "version": "1.8.0_291",
            "home": "/Library/Java/JavaVirtualMachines/jdk1.8.0_291.jdk/Contents/Home/jre",
            "runTime": "0",
            "startTime": "2021-08-24 14:03:24",
            "name": "Java HotSpot(TM) 64-Bit Server VM"
        },
        "sysFiles": [
            {
                "dirName": "/",
                "sysTypeName": "apfs",
                "typeName": "mac",
                "total": "233.56GB",
                "free": "64.41GB",
                "used": "169.15GB",
                "usage": "72.42%"
            },
            {
                "dirName": "/System/Volumes/VM",
                "sysTypeName": "apfs",
                "typeName": "VM",
                "total": "233.56GB",
                "free": "64.41GB",
                "used": "169.15GB",
                "usage": "72.42%"
            },
            {
                "dirName": "/System/Volumes/Preboot",
                "sysTypeName": "apfs",
                "typeName": "Preboot",
                "total": "233.56GB",
                "free": "64.41GB",
                "used": "169.15GB",
                "usage": "72.42%"
            },
            {
                "dirName": "/System/Volumes/Update",
                "sysTypeName": "apfs",
                "typeName": "Update",
                "total": "233.56GB",
                "free": "64.41GB",
                "used": "169.15GB",
                "usage": "72.42%"
            },
            {
                "dirName": "/System/Volumes/Data",
                "sysTypeName": "apfs",
                "typeName": "mac - 数据",
                "total": "233.56GB",
                "free": "64.41GB",
                "used": "169.15GB",
                "usage": "72.42%"
            }
        ],
        "systemInfoDTO": {
            "computerName": "lunas-mac.local",
            "computerIp": "172.19.32.47",
            "userDir": "/Users/luna/graduation-project/wednesday",
            "osName": "Mac OS X",
            "osArch": "x86_64"
        }
    }
}
```

##### CPU信息

```json
{
    "CPU_IDLE": [
        ["2021-08-27 13:36:52", 45.25],
        ["2021-08-27 13:37:03", 35.18],
        ["2021-08-27 13:37:48", 15.21],
        ["2021-08-27 13:52:48", 25.06],
        ["2021-08-27 13:52:59", 9.95]
    ],
    "CPU_SYSTEM": [
        ["2021-08-27 13:36:52", 22.5],
        ["2021-08-27 13:37:03", 20.85],
        ["2021-08-27 13:52:48", 35.98],
        ["2021-08-27 13:52:59", 53.98]
    ],
    "CPU_USER": [
        ["2021-08-27 13:36:52", 32.25],
        ["2021-08-27 13:37:03", 43.97],
        ["2021-08-27 13:39:00", 28.32],
        ["2021-08-27 13:39:12", 42.54],
        ["2021-08-27 13:52:59", 36.07]
    ]
}
```

##### 内存信息

```json
{
    "MEMORY_USE": [
        ["2021-08-27 13:36:52", "5.92"],
        ["2021-08-27 13:52:48", "5.99"],
        ["2021-08-27 13:52:59", "6.5"]
    ],
    "MEMORY_FREE": [
        ["2021-08-27 13:36:52", "2.7"],
        ["2021-08-27 13:37:03", "2.19"],
        ["2021-08-27 13:52:59", "1.94"]
    ]
}
```

#### 节点统计相关 ✅

##### 节点信息样例查看  ✅

### 运行时系统资源数据展示 sweney

#### 系统CPU，内存，相关资源 ✅

##### 查看数据样例 ✅

#### 获取加密串 ✅

### 当前在线设备

#### 实时监控

```json
{
    "data": [
        {
            "id": 3,
            "createTime": "2021-09-07T05:30:46.000+0000",
            "modifiedTime": "2021-09-09T23:23:40.000+0000",
            "version": 108,
            "key": "PF17JQVU",
            "type": "sweeney",
            "hardware": {
                "agentKey": "PF17JQVU",
                "oshiHardwareDTO": {
                    "hostName": "DESKTOP-A48DR00",
                    "manufacturer": "LENOVO",
                    "model": "81GY",
                    "serialNumber": "PF17JQVU",
                    "firmwareDTO": {
                        "manufacturer": "LENOVO",
                        "name": "7PCN27WW",
                        "description": "7PCN27WW",
                        "version": "LENOVO - 1"
                    },
                    "motherboardDTO": null,
                    "macAddressSet": [
                        "60:c5:47:06:6f:88"
                    ],
                    "processorDTO": {
                        "name": "Intel(R) Core(TM) i5-8250U CPU @ 1.60GHz",
                        "processorId": "BFEBFBFF000806EA",
                        "physicalPackageCount": 1,
                        "physicalProcessorCount": 4,
                        "logicalProcessorCount": 8
                    },
                    "memoryDTO": {
                        "memeryTotal": 17048506368,
                        "swapTotal": 2550136832
                    }
                },
                "openCLDeviceDTOList": [
                    {
                        "clPlatformICDSuffixKHR": "NV",
                        "id": 0,
                        "clDeviceType": "CL_DEVICE_TYPE_GPU",
                        "clDeviceName": "GeForce MX150",
                        "clDeviceBoardNameAMD": null,
                        "clDeviceVendor": "NVIDIA Corporation",
                        "clDeviceVendorId": "0x10de",
                        "clDeviceVersion": "OpenCL 1.2 CUDA",
                        "clDeviceOpenCLCVersion": "OpenCL C 1.2",
                        "clDriverVersion": "457.49",
                        "clDeviceGlobalMemSize": 2147483648
                    }
                ],
                "agentVersion": "1.8-SNAPSHOT"
            },
            "agentVersion": "1.8-SNAPSHOT",
            "lastSeen": "2021-09-10T07:23:40.000+0000"
        }
    ]
}
```

##### 时间的格式化处理 ✅

##### IP地址跳转实时检测页面修复 ✅

## fusion-message 中台设计

### Wednesday 邮件效果展示✅

### 提供APi接口 消息数据类型DTO ✅

### 邮件文字乱码处理，考虑是编码的问题，上服务器尝试

### 优化邮件发送

1. 定时发送
2. 任务完成发送
3. 任务开始发送
4. 机器下线发送

## fusion-user 中台设计

### 统一登录接口

### 提供外部登录Api 用户数据类型DTO

### 提供统一鉴权标识 userTag 设计使用

### 问题：使用后续优化

1. ##### 设备信息页面时间优化 ✅

2. IP跳转不对，心跳检测时间优化 ✅

3. 心跳检测上传IP，暂定 

4. 计算结果返回实时展示，对应log表

5. 清理任务的方法，统一设置任务状态

6. 停止项目可以考虑，设置删除状态，然后可以再转为待启动状态 任务重置

7. 扫描任务，和扫描项目可以分开处理

8. Wednesday对user和message都进行重启指令

9. 客户端运行可视化不完美

10. 客户端尽量展示当前计算的hash加密运算动效不完整

11. 服务端查询切面日志太臃肿，减少页面点击产生的日志

12. 查询进行的任务，初次进入，默认选择框bug

13. 已经分配任务查询bug，projectId为已经完成的任务，会抛出异常，检查异常位置，处理

14. 结束任务太麻烦

15. 远程重启项目

16. 项目搜索id未传入bug


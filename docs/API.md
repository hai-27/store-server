# 接口文档

## 用户模块

### 1. 登录

**请求URL：**

```
/users/login
```

**请求方式：**

```
Post
```

**参数说明：**

| 参数 | 是否必选 | 类型 | 说明 |
| :-: | :-: | :-: | :-: |
| userName | 是 | string | 用户名 |
|  password  | 是 | string | 密码 |

**返回示例：**

```javascript
{
  "code": "001",
    "user": {
    "user_id": 1,
    "userName": "admin"
  },
  "msg": "登录成功"
}
```



### 2. 查找用户名是否存在

**请求URL：**

```
/users/findUserName
```

**请求方式：**

```
Post
```

**参数说明：**

|   参数   | 是否必选 |  类型  |  说明  |
| :------: | :------: | :----: | :----: |
| userName |    是    | string | 用户名 |

**返回示例：**

```javascript
{
  "code": "001",
  "msg": "用户名不存在，可以注册"
}
```



### 3. 注册

**请求URL：**

```
/users/register
```

**请求方式：**

```
Post
```

**参数说明：**

|   参数   | 是否必选 |  类型  |  说明  |
| :------: | :------: | :----: | :----: |
| userName |    是    | string | 用户名 |
| password |    是    | string |  密码  |

**返回示例：**

```javascript
{
  code: '001',
  msg: '注册成功'
}
```



未完，有空继续写。
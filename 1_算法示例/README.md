# 算法示例

## 使用指南

1. 按 `CTRL + P` 打开命令行面板，输入 "terminal: Create New Terminal" 打开一个命令行终端.
2. 在命令行里输入 `cd 1_算法示例` 并按 `ENTER` 进入"算法示例"目录。
3. 在命令行里输入 `python QAtrain_weights.py --data_path=./tasks_1-20_v1-2/en/ --model=small --ifcontinue=False --data_type=1` 按 `ENTER` 运行训练程序。
4. 在命令行里输入 `python QAanswer.py --data_path=./tasks_1-20_v1-2/en/ --model=small --data_type=1` 按 `ENTER` 运行测试程序。
5. 在命令行里输入 `John went back to the bathroom.
Mary travelled to the bathroom.
Where is John?` 按两次`ENTER`  查询结果。


#### 训练模型： ####

data_path: 是指数据集的路径

model:  是训练模型的大小，可以选择small、medium和large

ifcontinue:：第一次训练时设置为False，再次训练时设置为True

data_type：选择哪一种数据作为训练的模型，这里选择第一种(范围是1-20)

#### 测试模型: ####

data_type：和训练设置的一致
==注意：==首次预测，加载模型比较慢

#### 结果展示： ####

```bash
# 开始输入文档和问题
输入文档和问题(输入问题后空行回车):
John went back to the bathroom.
Mary travelled to the bathroom.
Where is John?
(此处是一个空行,用来区分问题,按两次回车)

# 结果
try to answer
The Question answer is:  bathroom
```

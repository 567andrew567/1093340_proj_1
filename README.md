# ALCO Project_1
## sample input and output 

input為欲計算之傷害數值X，X小於等於99，輸出為帶入公式計算結果

### input
1. -1
1. 0
1. 5
1. 13
1. 21
1.90

### output
1. -1
1. 1
1. 28
1. 618
1. 59
1. 2725

## 執行結果

```
Input a number:
-1
The damage:
-1
-- program is finished running (0) --


Reset: reset completed.

Input a number:
0
The damage:
1
-- program is finished running (0) --


Reset: reset completed.

Input a number:
5
The damage:
28
-- program is finished running (0) --


Reset: reset completed.

Input a number:
13
The damage:
618
-- program is finished running (0) --


Reset: reset completed.

Input a number:
21
The damage:
59
-- program is finished running (0) --


Reset: reset completed.

Input a number:
90
The damage:
2725
-- program is finished running (0) --
```

## 程式說明

輸入參數X存在**t1**中，**t2**為function的return值，計算的function為標籤**F**，
進入**F**時，先將**t1**及**ra**儲存至**sp**中，接著判斷**t1**的範圍

* **t1<0** 跳至 **case_else**
    * **t2** 加 **-1**
* **t1==0** 跳至 **case_0**
    * **t2** 加 **1**
* **t1==1** 跳至 **case_1**
    * **t2** 加 **5**
* **1<t1<=10** 跳至 **case_10**
    * **t1** 減 **1** 後再次跳至 **F**，**t1** 再減 **1** 後再次跳至 **F**
* **10<t1<=20** 跳至 **case_20**
    * **t1** 減 **2** 後再次跳至 **F**，**t1** 再減 **1** 後再次跳至 **F**
* **t1<=20** 跳至 **case_20up**
    * **t2** 加 **t2\*2**，**t1** 除 **5** 後再次跳至 **F**

每個case執行完後將直接跳至**Exit**，將**sp**中的**t1**及**ra**取出後跳至ra儲存的位置，
若返回主程式，就輸出程式結果，並結束程式

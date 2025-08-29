#import "../../hwk-template-cn.typ":*
#show:hwk.with(
  author: "小明",
  course: "线性代数",
  stu_id: 12345678901,
  hwk_id: 6
)

#problem[
  证明：实对称矩阵的不同特征值之间的特征向量相互正交.
]

#proof[
  考虑实内积空间 $V$ 上的一个对称双线性变换 $cal(A)$，他在一组基下的矩阵式对称矩阵. 假设 $cal(A)$ 的属于两个特征值 $lambda_1 != lambda_2$ 的特征向量分别是 $eta_1, eta_2!=0$，于是我们有：
  $
  lambda_1(eta_1,eta_2)=
  (cal(A)eta_1,eta_2)=(eta_1,cal(A)eta_2)=lambda_2(eta_1,eta_2)
  $
  因此可以得出：$(eta_1, eta_2)=0$ . 
]

#problem[
  证明：实对称矩阵可以正交对角化.
]

#proof[
  由 问题1 可以得到：实对称矩阵的不同特征值之间的特征向量相互正交. 又可以证明：实对称矩阵矩阵特征多项式的所有复根都是实根. 因此实对称矩阵一定可以对角化. 不同的特征子空间之间的特征向量相互正交，同一特征子空间内的向量可以通过 Schmidt 正交化得到正交基，因此得证.
]

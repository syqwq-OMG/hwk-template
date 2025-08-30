#import "../../hwk-template-en.typ":*
#show : hwk.with(
  course: "Linear Algebra",
  author: "syqwq",
  hwk_id: 6
)

#problem[
  Prove: eigenvectors corresponding to different eigenvalues of a real symmetric matrix are orthorgonal to each other.
]

#proof[
  Suppose $cal(A)$ is a symmetric bilinear transformation on $V$, whose matrix under a basis is a symmetric matrix. Let $eta_1, eta_2 != 0$ are 2 eigenvectors of $lambda_1 != lambda_2$. We get:
  $
  lambda_1(eta_1,eta_2)=
  (cal(A)eta_1,eta_2)=(eta_1,cal(A)eta_2)=lambda_2(eta_1,eta_2)
  $
  Then, we deduce that $(eta_1,eta_2)=0$. 
]

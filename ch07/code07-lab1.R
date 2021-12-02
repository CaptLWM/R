library(svDialogs)
purchase = dlgInput('가격입력')$res
purchase = as.numeric(purchase)
type = NULL
ratio = NULL
if(purchase>=300000) {
  type='플래티넘'
  ratio=0.07
} else if(purchase>=200000){
  type='골드'
  ratio=0.05
} else if(purchase>=100000){
  type='실버'
  ratio = 0.03
} else {
  type='프렌즈'
  ratio = 0.01
}
cat('고객님은',type,'회원으로 구매액의',ratio*100,'%가 적립됩니다.')

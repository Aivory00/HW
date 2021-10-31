# 1) Создать переменную типа String
a = 'test_string'
# 2) Создать переменную типа Integer
b = 20
# 3) Создать переменную типа Float
c = 1.5
# 4) Создать переменную типа Bytes
n = bytes(12)
# 5) Создать переменную типа List
d = [2,4, 'hello world']
# 6) Создать переменную типа Tuple
e = (22, 'list', 1.2)
# 7) Создать переменную типа Set
f = set(['hi', 'lest go', 'opera', 9, 'hi', 9])
# 8. Создать переменную типа Frozen set
g = frozenset(['hi', 'lest go', 'opera', 0])
# 9) Создать переменную типа Dict
j = {'dict': 20, 'dict_2': 'hello'}
key = frozenset(g)
# 10) Вывести в консоль все выше перечисленные переменные с добавлением типа данных.
print(a,type(a))
print(b,type(b))
print(c,type(c))
print(n,type(n))
print(d,type(d))
print(e,type(e))
print(f,type(f))
print(g,type(g))
print(j,type(j))
# 11) Создать 2 переменные String, создать переменную в которой сканкатенируете эти переменные. Вывести в консоль.
str1 = 'hello '
str2 = 'world'
result = str1 + str2
print(result)
# 12) Вывести в одну строку переменные типа String и Integer используя “,” (Запятую)
print(a,b)
# 13) Вывести в одну строку переменные типа String и Integer используя “+” (Плюс)
print(a + ' ' + str(b))

x=int(input("Enter no. of states: "))
st=[input("Enter states: ") for i in range(0,x)]
y=int(input("Enter no. of keys: "))
ky=[input("Enter keys: ") for i in range(0,y)]
last=input("Give final key:")
k=[0 for i in range(len(st))]
for i in range(len(st)):
    k[i]=[0 for j in range(len(ky))]
    for j in range(len(ky)):
        k[i][j]=input('from ' +st[i]+' if ' +ky[j]+' +go: ')
def spot(q,w):
    lis.append(k[st.index(q)][ky.index(w)])
    return k[st.index(q)][ky.index(w)]
while True:
    lis=[]
    strt=st[0]
    w=input("Enter the string to check: ")
    for i in w:
        strt=spot(strt,i)
    if lis[-1]==last:
        print("String Accepted")
    else:
        print("String Not Accepted")

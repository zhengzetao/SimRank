import scipy.io as sio
import numpy as np
import pickle
def load_data():
    load_mat="net_martix/net_martix/net160/160template.mat"
    load_data = sio.loadmat(load_mat)
    person = load_data['Ws_p_160']
    for k in range(1):
        indivi = person[k][0]
        graph = np.matrix(np.zeros([190,190]))
        for i in range(len(indivi)):
            for j in indivi[i]:
                if j<0.05  and j>0:
                        graph[i,indivi[i].tolist().index(j)] = 1
    return graph
        
    
if __name__=="__main__":
    indivi = load_data()
    print(len(indivi))

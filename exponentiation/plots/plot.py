import numpy as np
import matplotlib.pyplot as plt


tab_num = np.arange(10, 10000, 750)
x = np.arange(10, 9760, 0.1)

m = ['naif', 'rapide']

# Pour nos 10 valeurs de x, on fait :
for n in range(10):

    # Récupération des données SR pour la méthode naïve et la méthode rapide
    sr_range_naif = []
    sr_mean_naif = []
    with open(f'../results/results{n}/naif_iter/SR.dat', 'r') as f:
        for line in f:
            tmp = [float(num) for num in line.split()]
            sr_range_naif.append([np.min(tmp), np.max(tmp)])
            sr_mean_naif.append(np.mean(tmp))

    sr_range_naif = np.array(sr_range_naif) 
    sr_mean_naif = np.array(sr_mean_naif)

    sr_range_rapide = []
    sr_mean_rapide = []
    with open(f'../results/results{n}/rapide_iter/SR.dat', 'r') as f:
        for line in f:
            tmp = [float(num) for num in line.split()]
            sr_range_rapide.append([np.min(tmp), np.max(tmp)])
            sr_mean_rapide.append(np.mean(tmp))

    sr_range_rapide = np.array(sr_range_rapide) 
    sr_mean_rapide = np.array(sr_mean_rapide)


    # Récupération des données RN pour la méthode naïve et la méthode rapide
    rn_naif = []
    with open(f'../results/results{n}/naif_iter/UR.dat', 'r') as f:
        for line in f:
            rn_naif += [float(num) for num in line.split()]

    rn_rapide = []
    with open(f'../results/results{n}/rapide_iter/UR.dat', 'r') as f:
        for line in f:
            rn_rapide += [float(num) for num in line.split()]
        

    # Plots
    fig, ax = plt.subplots(1,2, figsize=(9, 4))

    for i in range(2):

        ax[i].plot(tab_num, globals()['rn_' + m[i]], linestyle= '--', color='#1446aa', marker='o', markerfacecolor='none', label='RN')
        ax[i].plot(x, np.sqrt(x)*(2**(-23)), linestyle='-.', color='#727a88', label='$\sqrt{n}u$')
        ax[i].plot(tab_num, globals()['sr_mean_' + m[i]], marker='*', color='#cb3717', label='SR average')
        ax[i].plot(x, x*(2**(-23)), 'k--',label='$nu$') 
        ax[i].fill_between(tab_num, globals()['sr_range_' + m[i]][:, 0], globals()['sr_range_' + m[i]][:, 1], color='#cb3717', alpha=0.2, label='SR range')

        ax[i].set_xlabel('$n$')
        ax[i].set_ylabel('Forward error')
        ax[i].set_yscale('log')
        ax[i].grid(True, which='both', linestyle='-', alpha=0.5)


    # Paramètres supplémentaires pour le 1e plot
    ax[0].set_title('$(a)$ Naive method')

    # Paramètres supplémentaires pour le 2e plot
    ax[1].set_title('$(b)$ Fast method')


    # Légendes communes
    plt.legend(loc = 'lower center', ncol=3, bbox_to_anchor = (0.05, -0.01, 1, 1),
           bbox_transform = plt.gcf().transFigure, edgecolor='black')
    plt.subplots_adjust(bottom=0.3)
    fig.tight_layout()

    plt.savefig(f'plot_exp_{n}.png')
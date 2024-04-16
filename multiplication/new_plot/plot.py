import numpy as np
import matplotlib.pyplot as plt


tab_num = np.arange(10, 11011, 1100)
x = np.arange(10, 11011, 0.1)

# Pour nos 3 valeurs de x, on fait :
for n in range(3):

    # Récupération des données SR
    sr_range = []
    sr_mean = []
    with open(f'../results{n}/SR.dat', 'r') as f:
        for line in f:
            tmp = [float(num) for num in line.split()]
            sr_range.append([np.min(tmp), np.max(tmp)])
            sr_mean.append(np.mean(tmp))

    sr_range = np.array(sr_range) 
    sr_mean = np.array(sr_mean)


    # Récupération des données RN
    rn = []
    with open(f'../results{n}/UR.dat', 'r') as f:
        for line in f:
            rn += [float(num) for num in line.split()]
        

    # Plots
    fig, ax = plt.subplots(1,2, figsize=(8, 4))

    for i in range(2):

        ax[i].fill_between(tab_num, sr_range[:, 0], sr_range[:, 1], color='#cb3717', alpha=0.2, label='SR range') 
        ax[i].plot(tab_num, sr_mean, marker='*', color='#cb3717', label='SR average')
        ax[i].plot(tab_num, rn, linestyle= '--', color='#1446aa', marker='o', markerfacecolor='none', label='RN')
        ax[i].plot(x, np.sqrt(x)*(2**(-23)), linestyle='-.', color='#727a88', label='$\sqrt{n}u$')

        ax[i].grid(True, which='both', linestyle='-', alpha=0.5)
        ax[i].set_xlabel('$n$')
        ax[i].set_ylabel('$Forward$ $error$')


    # Paramètres supplémentaires pour le 1e plot
    ax[0].set_yticks([0, 10**(-5), 5*(10**(-5)), 10**(-4)])
    ax[0].set_yticklabels(['$0$', f'$1x10^{{-5}}$', f'$5x10^{{-5}}$', f'$1x10^{{-4}}$'])
    ax[0].set_title('$(a)$')

    # Paramètres supplémentaires pour le 2e plot
    ax[1].plot(x, x*(2**(-23)), 'k--',label='$nu$')
    ax[1].set_yscale('log')
    ax[1].set_title('$(b)$')


    # Légendes communes
    plt.legend(bbox_to_anchor=(0, -0.5), loc='lower center', ncol=3)
    plt.subplots_adjust(bottom=0.2)
    plt.tight_layout()

    plt.savefig(f'plot_sum_{n}.png')
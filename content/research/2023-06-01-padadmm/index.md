+++
title= "From Noisy Fixed-Point Iterations to Private ADMM for Centralized and Federated Learning"
date = 2023-06-01

[extra]
    type = "paper"
    authors = [ "Edwige Cyffers", "Aurélien Bellet", "Debabrota Basu" ]


    arxiv = "https://arxiv.org/abs/2302.12559"
    code = "https://github.com/totilas/padadmm"
    url_slides = "https://slideslive.com/39002791/from-noisy-fixed-point-iterations-to-private-admm-for-centralized-and-federated-learning"
    image = "img/admm.png"
+++

![](/img/admm.png)

We study differentially private (DP) machine learning algorithms as instances of noisy fixed-point iterations, in order to derive privacy and utility results from this well-studied framework. We show that this new perspective recovers popular private gradient-based methods like DP-SGD and provides a principled way to design and analyze new private optimization algorithms in a flexible manner. Focusing on the widely-used Alternating Directions Method of Multipliers (ADMM) method, we use our general framework to derive novel private ADMM algorithms for centralized, federated and fully decentralized learning. For these three algorithms, we establish strong privacy guarantees leveraging privacy amplification by iteration and by subsampling. Finally, we provide utility guarantees using a unified analysis that exploits a recent linear convergence result for noisy fixed-point iterations. 

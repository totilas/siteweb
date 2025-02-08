+++
date = 2022-01-01
extra.authors = [ "Edwige Cyffers", "Aurélien Bellet"]

extra.type = "paper"

extra.arxiv = "https://arxiv.org/abs/2012.05326"

extra.code = "https://github.com/totilas/privacy-amplification-by-decentralization"

extra.url_slides = "https://slideslive.com/38980590/privacy-amplification-by-decentralization?ref=speaker-53053"

extra.image = "./img/paper.png"

extra.featured = true

+++

Analyzing data owned by several parties while achieving a good trade-off between utility and privacy is a key challenge in federated learning and analytics. In this work, we introduce a novel relaxation of local differential privacy (LDP) that naturally arises in fully decentralized algorithms, i.e., when participants exchange information by communicating along the edges of a network graph without central coordinator. This relaxation, that we call network DP, captures the fact that users have only a local view of the system. To show the relevance of network DP, we study a decentralized model of computation where a token performs a walk on the network graph and is updated sequentially by the party who receives it. For tasks such as real summation, histogram computation and optimization with gradient descent, we propose simple algorithms on ring and complete topologies. We prove that the privacy-utility trade-offs of our algorithms under network DP significantly improve upon what is achievable under LDP, and often match the utility of the trusted curator model. Our results show for the first time that formal privacy gains can be obtained from full decentralization. We also provide experiments to illustrate the improved utility of our approach for decentralized training with stochastic gradient descent.

[Here](https://arxiv.org/abs/2012.05326) is the paper, or in Aistats [Proceedings](https://proceedings.mlr.press/v151/cyffers22a.html).

[Here](https://github.com/totilas/privacy-amplification-by-decentralization) is the code.

[Here](https://slideslive.com/38980590/privacy-amplification-by-decentralization?ref=speaker-53053) a video of presentation.

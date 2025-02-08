+++
title = "Research"
sort_by = "date"

# Here the two dedicated templates
template = "publications.html"
page_template = "publication-page.html"

# If you want to show your publications under different sections
# the title will be the displayed text in your website, and the type
# should be the type of publication.
# Each individual plublication has an `extra.type` that refers to the
# publication type (example in content sub-section).
extra.publications_types = [
  { title = "Papers", type = "paper" },
  { title = "Thesis", type = "thesis" }
]
+++

Data is the most important part of machine learning.
I believe that data should in most cases stay decentralized. Firsty, it avoids consolidating monopolies that thrive from early data collection. Second, avoiding row data leakage is still today the most important privacy feature. Thirdly, keeping data in their local context is the best way to explore better data exploitation and empower users with their data. My PhD work explored the consequences of decentralization in terms of privacy guarantees, showing that privacy attacks are still possible in this setting but that differential privacy guarantees implemented at the scale of the node are amplified by the decentralization, depending on the used graph and the algorithm. More generally, I am interested by the point of view of the user in the federated and decentralized setting: what are the consequences of participating to a training? Under which setting and parameters?

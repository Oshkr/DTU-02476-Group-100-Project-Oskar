---
layout: default
nav_exclude: true
---

# Exam template for 02476 Machine Learning Operations

This is the report template for the exam. Please only remove the text formatted as with three dashes in front and behind
like:

```--- question 1 fill here ---```

where you instead should add your answers. Any other changes may have unwanted consequences when your report is auto
generated in the end of the course. For questions where you are asked to include images, start by adding the image to
the `figures` subfolder (please only use `.png`, `.jpg` or `.jpeg`) and then add the following code in your answer:

```markdown
![my_image](figures/<image>.<extension>)
```

In addition to this markdown file, we also provide the `report.py` script that provides two utility functions:

Running:

```bash
python report.py html
```

will generate an `.html` page of your report. After deadline for answering this template, we will autoscrape
everything in this `reports` folder and then use this utility to generate an `.html` page that will be your serve
as your final handin.

Running

```bash
python report.py check
```

will check your answers in this template against the constrains listed for each question e.g. is your answer too
short, too long, have you included an image when asked to.

For both functions to work it is important that you do not rename anything. The script have two dependencies that can
be installed with `pip install click markdown`.

## Overall project checklist

The checklist is *exhaustic* which means that it includes everything that you could possible do on the project in
relation the curricilum in this course. Therefore, we do not expect at all that you have checked of all boxes at the
end of the project.

### Week 1

* [x] Create a git repository
* [x] Make sure that all team members have write access to the github repository
* [x] Create a dedicated environment for you project to keep track of your packages
* [x] Create the initial file structure using cookiecutter
* [x] Fill out the `make_dataset.py` file such that it downloads whatever data you need and
* [x] Add a model file and a training script and get that running
* [x] Remember to fill out the `requirements.txt` file with whatever dependencies that you are using
* [x] Remember to comply with good coding practices (`pep8`) while doing the project
* [x] Do a bit of code typing and remember to document essential parts of your code
* [x] Setup version control for your data or part of your data
* [x] Construct one or multiple docker files for your code
* [x] Build the docker files locally and make sure they work as intended
* [x] Write one or multiple configurations files for your experiments
* [x] Used Hydra to load the configurations and manage your hyperparameters
* [x] When you have something that works somewhat, remember at some point to to some profiling and see if
      you can optimize your code
* [x] Use Weights & Biases to log training progress and other important metrics/artifacts in your code. Additionally,
      consider running a hyperparameter optimization sweep.
* [x] Use Pytorch-lightning (if applicable) to reduce the amount of boilerplate in your code

### Week 2

* [x] Write unit tests related to the data part of your code
* [x] Write unit tests related to model construction and or model training
* [x] Calculate the coverage.
* [x] Get some continuous integration running on the github repository
* [ ] Create a data storage in GCP Bucket for you data and preferable link this with your data version control setup
* [ ] Create a trigger workflow for automatically building your docker images
* [ ] Get your model training in GCP using either the Engine or Vertex AI
* [ ] Create a FastAPI application that can do inference using your model
* [ ] If applicable, consider deploying the model locally using torchserve
* [ ] Deploy your model in GCP using either Functions or Run as the backend

### Week 3

* [ ] Check how robust your model is towards data drifting
* [ ] Setup monitoring for the system telemetry of your deployed model
* [ ] Setup monitoring for the performance of your deployed model
* [ ] If applicable, play around with distributed data loading
* [ ] If applicable, play around with distributed model training
* [ ] Play around with quantization, compilation and pruning for you trained models to increase inference speed

### Additional

* [x] Revisit your initial project description. Did the project turn out as you wanted?
* [x] Make sure all group members have a understanding about all parts of the project
* [x] Uploaded all your code to github

## Group information

### Question 1
> **Enter the group number you signed up on <learn.inside.dtu.dk>**
>
> Answer:

100

### Question 2
> **Enter the study number for each member in the group**
>
> Example:
>
> *sXXXXXX, sXXXXXX, sXXXXXX*
>
> Answer:

*s183649, s223280, s184364, s205339, s232897*

### Question 3
> **What framework did you choose to work with and did it help you complete the project?**
>
> Answer length: 100-200 words.
>
> Example:
> *We used the third-party framework ... in our project. We used functionality ... and functionality ... from the*
> *package to do ... and ... in our project*.
>
> Answer:

We selected the TIMM framework (PyTorch Image Models) for our project as the primary tool for implementing and training deep learning models. TIMM is a pre-built library particularly designed for computer vision tasks. Using this framework gave us the flexibility to not be locked into a specific architecture, and just as importantly, it has good PyTorch Integration, which is helpful for our existing PyTorch workflow from the exercises as well as earlier DTU courses. Additionally, TIMM is quite user-friendly, which meant that we could focus on model development and experimentation time. It allowed us to quickly implement and test models without too much trouble, and we trusted the framework to be both robust and efficient in achieving our image classification task.

## Coding environment

> In the following section we are interested in learning more about you local development environment.

### Question 4

> **Explain how you managed dependencies in your project? Explain the process a new team member would have to go**
> **through to get an exact copy of your environment.**
>
> Answer length: 100-200 words
>
> Example:
> *We used ... for managing our dependencies. The list of dependencies was auto-generated using ... . To get a*
> *complete copy of our development environment, one would have to run the following commands*
>
> Answer:

To manage dependencies in our project, we have employed two separate requirements files: requirements.txt for user dependencies and requirements_dev.txt for development dependencies. This separation ensures that users who only need to run the application aren't burdened with unnecessary development tools, while developers have all the tools they need. To get the environment up and running, run the following commands:

**How to get a copy of our development environment:**

git clone https://github.com/JonatanRasmussen/DTU-02476-Group-100-Project

(LAUNCH A VIRTUAL ENVIRONMENT, THIS DEPENDS ON YOUR PACKAGE MANAGER SOFTWARE AND OS)

pip install -r requirements.txt

pip install -r requirements_dev.txt

... And done! If you don't know how to launch a virtual environment, type in these commands (note that this is one of many ways to set up a virtial environment):

**Virtual environment step-by-step guide for Windows 10:**

git clone https://github.com/JonatanRasmussen/DTU-02476-Group-100-Project

pip install virtualenv

virtualenv venv

.\venv\Scripts\activate

pip install -r requirements.txt

pip install -r requirements_dev.txt

**Virtual environment step-by-step guide for MacOS or Linux:**

git clone https://github.com/JonatanRasmussen/DTU-02476-Group-100-Project

pip install virtualenv

virtualenv venv

source venv/bin/activate

pip install -r requirements.txt

pip install -r requirements_dev.txt

### Question 5

> **We expect that you initialized your project using the cookiecutter template. Explain the overall structure of your**
> **code. Did you fill out every folder or only a subset?**
>
> Answer length: 100-200 words
>
> Example:
> *From the cookiecutter template we have filled out the ... , ... and ... folder. We have removed the ... folder*
> *because we did not use any ... in our project. We have added an ... folder that contains ... for running our*
> *experiments.*
> Answer:

Our project's structure is primarily derived from the mlops_template, a cookiecutter template designed for Machine Learning Operations (MLOps). The main directories we utilized and filled out are:

Data: Contains raw data and processed datasets. We emphasized the management of these datasets, ensuring they are immutable once created.

Models: This is where our trained models, predictions, and summaries are stored.

Notebooks: Jupyter notebooks were used for exploratory data analysis and initial model prototyping.

Reports: All our reports, including figures, are stored here. Additionally, the report template for the exam can be found here as well. We have used it as a todo-list to split and coordinate project requirements.

Tests: Self-explanatory.

Other directories, like docs and visualization, were not extensively used in our project. We decided to focus on the core aspects of model development and data handling.

### Question 6

> **Did you implement any rules for code quality and format? Additionally, explain with your own words why these**
> **concepts matters in larger projects.**
>
> Answer length: 50-100 words.
>
> Answer:

In our project, we aimed at following PEP 8 standards and we used tools like flake8 and mypy for linting (this partly came down to personal preference). We decided to be a bit loose regarding the max characters per line limit.

Code quality and formatting matters in larger projects, as you reach a point where you lose overview of all the code that has been written. At this point, you need to easily be able to browse through the codebase while being able to understand it without misunderstandings.

## Version control

> In the following section we are interested in how version control was used in your project during development to
> corporate and increase the quality of your code.

### Question 7

> **How many tests did you implement and what are they testing in your code?**
>
> Answer length: 50-100 words.
>
> Example:
> *In total we have implemented X tests. Primarily we are testing ... and ... as these the most critical parts of our*
> *application but also ... .*
>
> Answer:

We are primarily testing the data handling and model functionality, as well as a few other files in our codebase. The tests ensure that data loading and processing steps were consistent and error-free, and that the model's core functionalities, like training and prediction, were working as we expected it to. We wanted a baseline level of testing, as well as a reasonable code coverage to feel more confident in the correctness of our project.

### Question 8

> **What is the total code coverage (in percentage) of your code? If you code had an code coverage of 100% (or close**
> **to), would you still trust it to be error free? Explain you reasoning.**
>
> Answer length: 100-200 words.
>
> Example:
> *The total code coverage of code is X%, which includes all our source code. We are far from 100% coverage of our **
> *code and even if we were then...*
>
> Answer:

Our code coverage was aimed at approximately 75-90% throughout most of the project. High code coverage is desirable, but it doesn't guarantee the absence of bugs or the consideration of every possible edge case. We focused on understand the context and logic of the code rather than just achieving high coverage statistics (if you aim for X% code coverage as an arbitrary goal, you can end up with group members implementing useless tests just to reach their quota.) Practical manual testing and  monitoring are just as crucial for ensuring the reliability of software. However, even if we achieved 100% code coverage, we wouldn't entirely trust it to be error-free. A lot of bugs does not exist at the unit level, but rather as a consequence of how the code interacts with eachother. End-to-end testing can help catch these bugs, but due to the scope of our project, we allowed outself to not be too strict regarding testing - after all, it is not a multi-billion NASA spacecraft we are coding. We aimed at a resonable tradeoff between time and test coverage.

### Question 9

> **Did you workflow include using branches and pull requests? If yes, explain how. If not, explain how branches and**
> **pull request can help improve version control.**
>
> Answer length: 100-200 words.
>
> Example:
> *We made use of both branches and PRs in our project. In our group, each member had an branch that they worked on in*
> *addition to the main branch. To merge code we ...*
>
> Answer:

In our project, we utilized Git branches and pull requests to manage code changes and maintain code quality. This was done via Github.com. We decided to have each team member create their own branches for specific features. This ensured that the main branch always remained stable.

Once a feature was completed and locally tested, a pull request was created. We did not do code reviews or PRs for each other, as this added needless bureaucracy. Instead we decided to trust eachother in managing their own commits. 

On top of that, when creating a PR, it also triggers our chosen Continuous Integration (CI) tool - Github Actions. This process involved running our suite of tests on the proposed code changes. The primary purpose of this CI tool was to provide reassurance that the new code did not introduce any errors or failures. If all tests passed, we could confidently merge the new code into the main branch, knowing that it maintained the stability and integrity of our project.

We were concerned about duplicate work due to group members not being completely up-to-date regarding what the other group members were working on. We compensated for this by asking everyone to frequently push/merge to the main-branch.

Luckily for our team, many group members were already experienced with using Git as Version Control System (VCS), so this workflow came natural for us.

### Question 10

> **Did you use DVC for managing data in your project? If yes, then how did it improve your project to have version**
> **control of your data. If no, explain a case where it would be beneficial to have version control of your data.**
>
> Answer length: 100-200 words.
>
> Example:
> *We did make use of DVC in the following way: ... . In the end it helped us in ... for controlling ... part of our*
> *pipeline*
>
> Answer:

In our project, we used Data Version Control (DVC) to handle very large files, such as our data set. Github is a service meant for smaller files, such as text, so we wanted to use a separate system and dedicated remote storage system. We used google drive for external hosting, which would allow us to track separate versions of the data if needed. By doing this, we ensured the synchronization of data storage with code, helping us link the right data version with the corresponding code version. As we understand it, DVC excels at collaborating on data analysis or machine learning projects where data changes need to be as transparent and trackable as code changes. Using DVC allowed us facilitate a high degree of reproducibility, which is just as critical in machine learning projects as in regular software projects.

When it comes to Docker, it is also great for environmental consistency and portability. Docker containers encapsulate the application and its environment, ensuring that it works uniformly across different systems. This encapsulation includes the application, its dependencies, and the environment settings. As a result, Docker significantly reduces the ‘it works on my machine’ problem, providing a consistent environment for the application from development to production.
### Question 11

> **Discuss you continues integration setup. What kind of CI are you running (unittesting, linting, etc.)? Do you test**
> **multiple operating systems, python version etc. Do you make use of caching? Feel free to insert a link to one of**
> **your github actions workflow.**
>
> Answer length: 200-300 words.
>
> Example:
> *We have organized our CI into 3 separate files: one for doing ..., one for running ... testing and one for running*
> *... . In particular for our ..., we used ... .An example of a triggered workflow can be seen here: <weblink>*
>
> Answer:

--- question 11 fill here ---

## Running code and tracking experiments

> In the following section we are interested in learning more about the experimental setup for running your code and
> especially the reproducibility of your experiments.

### Question 12

> **How did you configure experiments? Did you make use of config files? Explain with coding examples of how you would**
> **run a experiment.**
>
> Answer length: 50-100 words.
>
> Example:
> *We used a simple argparser, that worked in the following way: python my_script.py --lr 1e-3 --batch_size 25*
>
> Answer:

--- question 12 fill here ---

### Question 13

> **Reproducibility of experiments are important. Related to the last question, how did you secure that no information**
> **is lost when running experiments and that your experiments are reproducible?**
>
> Answer length: 100-200 words.
>
> Example:
> *We made use of config files. Whenever an experiment is run the following happens: ... . To reproduce an experiment*
> *one would have to do ...*
>
> Answer:

To ensure the reproducibility of our experiments, we used many of the tools taught during the course. We tried using config file where it made sense to do so, which documented all the settings and parameters used. This made it easy to replicate or modify experiments. Additionally, we also used version control for both code and configs (we used Git for this). This ensured that we could always revert to or examine the state of the code for any given experiment. Logged was also used to document what happened each time the code was run, which helps for both debugging as well as validating a succesful reproduction of results. Finally, we also used DVC to handle the changes made to very large files, while also ensuring that we could revert back to earlier version of said files.

### Question 14

> **Upload 1 to 3 screenshots that show the experiments that you have done in W&B (or another experiment tracking**
> **service of your choice). This may include loss graphs, logged images, hyperparameter sweeps etc. You can take**
> **inspiration from [this figure](figures/wandb.png). Explain what metrics you are tracking and why they are**
> **important.**
>
> Answer length: 200-300 words + 1 to 3 screenshots.
>
> Example:
> *As seen in the first image when have tracked ... and ... which both inform us about ... in our experiments.*
> *As seen in the second image we are also tracking ... and ...*
>
> Answer:

--- question 14 fill here ---

### Question 15

> **Docker is an important tool for creating containerized applications. Explain how you used docker in your**
> **experiments? Include how you would run your docker images and include a link to one of your docker files.**
>
> Answer length: 100-200 words.
>
> Example:
> *For our project we developed several images: one for training, inference and deployment. For example to run the*
> *training docker image: `docker run trainer:latest lr=1e-3 batch_size=64`. Link to docker file: <weblink>*
>
> Answer:

For our project we developed several images: one for training and one for prediction.

To run the training Docker images, we used the following commands respectively:

```bash
docker run trainer:latest
docker run predict:latest
```

Link to Docker:

We integrated DVC into our Docker images for reproducibility and versioning. DVC enables us to systematically track and manage datasets alongside our code, ensuring that modifications to the data are diligently recorded and can be easily replicated across various stages of the project.
### Question 16

> **When running into bugs while trying to run your experiments, how did you perform debugging? Additionally, did you**
> **try to profile your code or do you think it is already perfect?**
>
> Answer length: 100-200 words.
>
> Example:
> *Debugging method was dependent on group member. Some just used ... and others used ... . We did a single profiling*
> *run of our main code at some point that showed ...*
>
> Answer:

Our approach to debugging varied among team members. Some preferred traditional debugging techniques using Python's pdb debugger, which provided ways to inspect code at runtime. Others used more sophisticated IDE-based debugging tools, such as setting breakpoints and inspecting variable states at certain points during execution. Simple print-statements may or may not have been used as well.

Regarding code profiling, we attemped to identify bottlenecks, although it was not something we focused too much on. The data processing and model training phases were the lenghtiest code executions, so optimizations could ideally be made here. We don't think our code is perfect in anyway, but we did not spend all that much time profiling it either. We made attempts at refining our code, but it was not our biggest focus.

## Working in the cloud

> In the following section we would like to know more about your experience when developing in the cloud.

### Question 17

> **List all the GCP services that you made use of in your project and shortly explain what each service does?**
>
> Answer length: 50-200 words.
>
> Example:
> *We used the following two services: Engine and Bucket. Engine is used for... and Bucket is used for...*
>
> Answer:

--- question 17 fill here ---

### Question 18

> **The backbone of GCP is the Compute engine. Explained how you made use of this service and what type of VMs**
> **you used?**
>
> Answer length: 100-200 words.
>
> Example:
> *We used the compute engine to run our ... . We used instances with the following hardware: ... and we started the*
> *using a custom container: ...*
>
> Answer:

--- question 18 fill here ---

### Question 19

> **Insert 1-2 images of your GCP bucket, such that we can see what data you have stored in it.**
> **You can take inspiration from [this figure](figures/bucket.png).**
>
> Answer:

--- question 19 fill here ---

### Question 20

> **Upload one image of your GCP container registry, such that we can see the different images that you have stored.**
> **You can take inspiration from [this figure](figures/registry.png).**
>
> Answer:

--- question 20 fill here ---

### Question 21

> **Upload one image of your GCP cloud build history, so we can see the history of the images that have been build in**
> **your project. You can take inspiration from [this figure](figures/build.png).**
>
> Answer:

--- question 21 fill here ---

### Question 22

> **Did you manage to deploy your model, either in locally or cloud? If not, describe why. If yes, describe how and**
> **preferably how you invoke your deployed service?**
>
> Answer length: 100-200 words.
>
> Example:
> *For deployment we wrapped our model into application using ... . We first tried locally serving the model, which*
> *worked. Afterwards we deployed it in the cloud, using ... . To invoke the service an user would call*
> *`curl -X POST -F "file=@file.json"<weburl>`*
>
> Answer:

--- question 22 fill here ---

### Question 23

> **Did you manage to implement monitoring of your deployed model? If yes, explain how it works. If not, explain how**
> **monitoring would help the longevity of your application.**
>
> Answer length: 100-200 words.
>
> Example:
> *We did not manage to implement monitoring. We would like to have monitoring implemented such that over time we could*
> *measure ... and ... that would inform us about this ... behaviour of our application.*
>
> Answer:

We did not prioritize to implement monitoring for our deployed model due to time constraints and other tasks requiring our focus. In an actual production environment however, implement monitoring would have saved us many headaches down the road, as it allows us to track the performance of the model over time, identify any degradation in prediction accuracy, and detect anomalies or unexpected behavior. Implementing monitoring would help in ensuring the long-term health and reliability of our project. It would give us an overview of how the model is performing in the real world, alert us to any issues that might arise post-deployment. This give us the chance to fix bugs and provide maintenance as soon as possible, before the issues affect a lot of users. For machine learning models particularly, this is especially important, as data drift or changes in input patterns can significantly affect performance.

### Question 24

> **How many credits did you end up using during the project and what service was most expensive?**
>
> Answer length: 25-100 words.
>
> Example:
> *Group member 1 used ..., Group member 2 used ..., in total ... credits was spend during development. The service*
> *costing the most was ... due to ...*
>
> Answer:

--- question 24 fill here ---

## Overall discussion of project

> In the following section we would like you to think about the general structure of your project.

### Question 25

> **Include a figure that describes the overall architecture of your system and what services that you make use of.**
> **You can take inspiration from [this figure](figures/overview.png). Additionally in your own words, explain the**
> **overall steps in figure.**
>
> Answer length: 200-400 words
>
> Example:
>
> *The starting point of the diagram is our local setup, where we integrated ... and ... and ... into our code.*
> *Whenever we commit code and puch to github, it auto triggers ... and ... . From there the diagram shows ...*
>
> Answer:

--- question 25 fill here ---

### Question 26

> **Discuss the overall struggles of the project. Where did you spend most time and what did you do to overcome these**
> **challenges?**
>
> Answer length: 200-400 words.
>
> Example:
> *The biggest challenges in the project was using ... tool to do ... . The reason for this was ...*
>
> Answer:

The primary challenges we faced in this project revolved around integrating various technologies and tools into a smooth workflow. A lot of time was spent configuring the development environment and ensuring compatibility among different tools and libraries, some of which were external tools that none of us fully knew how to use. We experienced "integration hell" which is trying (and failing) to make multiple separate systems interact in harmony. But in the end, it worked out (mostly).

Collaboration and code management was challenging due to the diverse backgrounds of the team members. Some members were way more experienced in ML than others, but they could compensate by having experience on the "Ops"-side. On order to parallelize the work process as much as possible, we agreed on coding practices and standards that clearly delegated responsibility to each group member based on their preferences and strengths. Another challenge was the fact that our group mostly worked from home, with the occasional online meeting to coordinate the workflow and solve miscommunications. This made it a bit unclear what each member of the team was currently working on, and we tried out different ways of handeling this throughout the project, but we never found a solution that fully worked.

Overall, while these challenges were initially time-consuming and sometimes frustrating, they provided us with a deeper understanding of the complexities involved in the development of a real-world machine learning project as part of 5-person team. It gave us perspective on the importance of a well-structured development process, not just for our own sanity, but also for the sake of avoiding bottlenecks and keeping everyone productive.

### Question 27

> **State the individual contributions of each team member. This is required information from DTU, because we need to**
> **make sure all members contributed actively to the project**
>
> Answer length: 50-200 words.
>
> Example:
> *Student sXXXXXX was in charge of developing of setting up the initial cookie cutter project and developing of the*
> *docker containers for training our applications.*
> *Student sXXXXXX was in charge of training our models in the cloud and deploying them afterwards.*
> *All members contributed to code by...*
>
> Answer:

- Contributions from Jonatan Rasmussen s183649: (Placeholder)

- Contributions from Lucca Seyther s223280: (Placeholder)

- Contributions from Oskar Kristoffersen s184364: (Placeholder)

- Contributions from Pelle Andersen s205339: Docker, DVC.

- Contributions from Siyao Gui s232897: (Placeholder)

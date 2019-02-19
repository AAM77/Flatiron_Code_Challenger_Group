# A Basic Explanation of GitHub and the Most Commonly Used Terms

### First, a text-based explanation:

1. GitHub

You can think of GitHub as a sort of "cloud" system, like iCloud, but primarily for tracking edits to text (namely, developer projects).

2. Repositories

A repository is a fancy name for "Main Folder." When thinking of it in organizational terms, it is sort of like how you might have a folder called 'Vacation Images' to contain all of the pictures you took on vacation. That folder, might then contain other folders for further organization.)

When using GitHub, it is best to clone (copy) the repository onto your computer. Once you download it, it is treated as a local repository (local Main Folder). Any changes you make will remain on your machine until you submit those changes to GitHub via commits and pushes.

To recap:
A repository is like a Main Folder for a particular topic.
A GitHub repository is an online version of the folder on GitHub.
A local repository is a local version of the folder on your machine.

3. Branches

Branches on GitHub are essentially sub-folders within the main repository.

One of the branches, the Master branch, is often where the finalized code goes when working on a project. We could create other branches (sub-folders) within the Main Folder for better organization. Branches are primarily used to group changes together before submitting them to the Master branch.

4. Commits

When we commit something to a repository, we are attempting to make changes to the folder and log those changes to its GitHub repository's commit history.

An important thing to note: it is always best practice to clone the existing repository to our computers, make the changes there, and commit them to a non-master branch.

5. Merging

We can merge different branches together. When we merge a master branch with a non-master branch, it does not delete the non-master branch. Merging simply pastes all of the files from the non-master branch into the Master branch and updates the history. Files with the same name get overwritten.

### Here is an image to help with the understanding:

```

                           Main Folder
                        (the repository)
                               |
                               |
                -----------------------------
               |                             |
         Master folder                 Another folder
    (branch of Main Folder)       (branch of Main Folder)
               |                             |
               |                             |
            Contents                      Contents
       (files and folders)           (files and folders)

```



### Now, let's think of it in terms of an Images folder on our computer:

```
                        ALL VACATION IMAGES
                         (the repository)
                                 |
                                 |
             --------------------------------------------
            |                    |                       |
  Final/Edited Images    Partially Edited        New Un-Edited Images
  (the Master Folder)    (branch folder 1)         (branch folder 2)
            |                    |                       |
            |                    |                       |
         Contents             Contents                Contents
  (files and folders)    (files and folders)     (files and folders)

  ```


Here, we have a main folder that contains all of our images, called "ALL VACATION IMAGES."
Then, we have three folders inside of it to help keep things organized.

One folder, the 'Final/Edited Images' folder, is serving as the master folder. It is where all of finalized images go. (you know... the ones we Photoshopped or added filters to... or the ones we cropped)

Then, there is the 'Partially Edited' folder with images we're still editing or re-editing, so we won't really be adding those images to the 'Final/Edited Images' folder just yet.

And, finally, there is the 'New Un-Edited Images' folder, that contains all the new images we took.
These are the ones that still need to be edited.

Once we're done editing the images, we can merge (copy and paste) into the 'Final/Edited Images' folder.

The main difference between this example and GitHub is that GitHub keeps track of every commit (changes that we submit). We can actually switch to an earlier commit if things go really bad.


## Final Comments

This has been a rather bare bones and overly simplified explanation of GitHub and Repositories. I wrote it as an introduction to the most commonly used terms when talking about GitHub. It will, I hope, serve as a stepping stone to help ease the process of learning how to use GitHub.

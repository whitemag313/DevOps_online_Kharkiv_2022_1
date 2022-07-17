# Finale project

Create a simple pipeline with use Jenkins + GitHub. Additionally, I used Terraform + AWS to create a "product environment". We, like a developer, will make a new commit to GitHub. Jenkins will check it, if there is a new one, will upload it to "product environment".

![alt text](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m9_FinaleProject/scheme_fp.png)

## 1. Application
I create a simple parser on python witch will be simulated application. It will be parsing a some prices of cryptocoins from API Coingecko and send message to my Telegram.

<code>[Parser on Python](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m9_FinaleProject/parser_cg.py "link on GitHub")
</code>

## 2. Product environment
Next we need something where this script will be executed. To create this I used Terraform and AWS EC2.
Terraform will create instance, install python with modules, add ssh-key for Jenkins.

<code>[link on TF file](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m9_FinaleProject/TF/main.tf "link on GitHub")
</code>

## 3. Jenkins
Create virtual machine in VB and install Jenkins. As Jenkins will be on my VB, GitHub can't pushing new commit, so I configured in such a way that Jenkins would pull every minute Git to check new commit.

<code>[link on jenkins file](https://github.com/whitemag313/DevOps_online_Kharkiv_2022_1/blob/master/m9_FinaleProject/test_job.jenkins "link on GitHub")

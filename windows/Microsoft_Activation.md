---
title: Microsoft Activation Scripts (MAS)
description: Windows&office 激活
published: true
date: 2025-08-22T07:13:30.874Z
tags: 教程
editor: markdown
dateCreated: 2025-08-22T07:13:30.874Z
---


Microsoft Activation Scripts (MAS)
==================================

Open-source Windows and Office activator featuring HWID, Ohook, TSforge, KMS38, and Online KMS activation methods, along with advanced troubleshooting.

* * *

### How to Activate Windows / Office / Extended Updates (ESU)?[​](about:blank#how-to-activate-windows--office--extended-updates-esu "Direct link to How to Activate Windows / Office / Extended Updates (ESU)?")

#### Method 1 - PowerShell ❤️[​](about:blank#method-1---powershell-%EF%B8%8F "Direct link to Method 1 - PowerShell ❤️")

info

1.  **Open PowerShell**  
    Click the **Start Menu**, type `PowerShell`, then open it.
    
2.  **Copy and paste the code below, then press enter.**
    
    *   For **Windows 8, 10, 11**: 📌
        
        ```
        irm https://get.activated.win | iex  
        
        ```
        
    *   For **Windows 7** and later:
        
        ```
        iex ((New-Object Net.WebClient).DownloadString('https://get.activated.win'))  
        
        ```
        

**Script not launching❓Click here for info.**

*   If the above is blocked (by ISP/DNS), try this (needs **updated Windows 10 or 11**):
    
    ```
    iex (curl.exe -s --doh-url https://1.1.1.1/dns-query https://get.activated.win | Out-String)  
    
    ```
    
*   If that fails or you have an older Windows, use [**Method 2**](https://massgrave.dev/#method-2---traditional-windows-vista-and-later).

3.  The activation menu will appear. **Choose the green-highlighted options** to activate Windows or Office.
    
4.  **Done!**
    

#### Method 2 - Traditional (Windows Vista and later)[​](about:blank#method-2---traditional-windows-vista-and-later "Direct link to Method 2 - Traditional (Windows Vista and later)")

Click here to view

1.  Download the file using one of the links below:  
    ```
    https://github.com/massgravel/Microsoft-Activation-Scripts/archive/refs/heads/master.zip
    ```
    or  
    ```
    https://git.activated.win/massgrave/Microsoft-Activation-Scripts/archive/master.zip
    ```
2.  Right-click on the downloaded zip file and extract it.
3.  In the extracted folder, find the folder named `All-In-One-Version`.
4.  Run the file named `MAS_AIO.cmd`.
5.  You will see the activation options. Follow the on-screen instructions.
6.  That's all.

* * *

tip

*   Some ISPs/DNS block access to our domains. You can bypass this by enabling [DNS-over-HTTPS (DoH)](https://developers.cloudflare.com/1.1.1.1/encryption/dns-over-https/encrypted-dns-browsers/) in your browser.
*   **Having trouble**❓Connect with us [here](https://massgrave.dev/troubleshoot).

* * *

*   To activate additional products such as **Office for macOS, Visual Studio, RDS CALs, and Windows XP**, check [here](https://massgrave.dev/unsupported_products_activation).
*   To run the scripts in unattended mode, check [here](https://massgrave.dev/command_line_switches).

* * *

note

*   The IRM command in PowerShell downloads a script from a specified URL, and the IEX command executes it.
*   Always double-check the URL before executing the command and verify the source is trustworthy when manually downloading files.
*   Be cautious, as some spread malware disguised as MAS by changing the URL in the IRM command.

* * *

MAS Latest Release[​](about:blank#mas-latest-release "Direct link to MAS Latest Release")
-----------------------------------------------------------------------------------------

Last Release - v3.5 (10-Aug-2025)  
[GitHub](https://github.com/massgravel/Microsoft-Activation-Scripts) / [Azure DevOps](https://dev.azure.com/massgrave/_git/Microsoft-Activation-Scripts) / [Self-hosted Git](https://git.activated.win/massgrave/Microsoft-Activation-Scripts)

* * *

Features[​](about:blank#features "Direct link to Features")
-----------------------------------------------------------

*   **HWID (Digital License)** Method to Permanently Activate Windows
*   **Ohook** Method to Permanently Activate Office
*   **TSforge** Method to Permanently Activate Windows/ESU/Office
*   **KMS38** Method to Activate Windows Till the Year 2038
*   **Online KMS** Method to Activate Windows/Office For 180 Days (Lifetime With Renewal Task)
*   Advanced Activation Troubleshooting
*   $OEM$ Folders For Preactivation
*   Change Windows Edition
*   Change Office Edition
*   Check Windows/Office Activation Status
*   Available in All In One and Separate Files Versions
*   Fully Open Source and Based on Batch Scripts
*   Fewer Antivirus Detections

* * *

Activations Summary[​](about:blank#activations-summary "Direct link to Activations Summary")
--------------------------------------------------------------------------------------------

| Activation Type | Supported Product | Activation Period | Is Internet Needed? |
| --- | --- | --- | --- |
| HWID | Windows 10-11 | Permanent | Yes |
| Ohook | Office | Permanent | No |
| TSforge | Windows / ESU / Office | Permanent | Yes, needed on build 19041 and later |
| KMS38 | Windows 10-11-Server | Till the Year 2038 | No |
| Online KMS | Windows / Office | 180 Days. Lifetime With Renewal Task | Yes |

For more details, use the respective activation details in Docs and [comparison chart](https://massgrave.dev/chart).  
To activate unsupported products such as **Office on Mac**, check [here](https://massgrave.dev/unsupported_products_activation).

* * *

Screenshots[​](about:blank#screenshots "Direct link to Screenshots")
--------------------------------------------------------------------

![](https://massgrave.dev/assets/images/MAS_AIO-97ec1fa241d2b6ac4acf28047058b80e.png)

![](https://massgrave.dev/assets/images/MAS_HWID-a9c4253a385cf95c6969c8c58c553a14.png)

![](https://massgrave.dev/assets/images/MAS_Ohook-4938af47f633897c06bd3304bb73162b.png)

![](https://massgrave.dev/assets/images/MAS_TSforge-2fe855ff8c5af050d619a83209684abd.png)

![](data:image/png;base64,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zeNr7L8cH5ZZ8fWp/7dRrr9U3s/Uue/+72fm+6MXKkuUoZbk4y3j6MU5rvY3dXxL1+0e/2kel7HTcvX/fueO/+b8pfWqr+8Sl+NbuR5smVCDD5AvMGWIsFy+yJd3mHJYrDmnX/3r4PsMvh6hBh/ABfR1hrtrdag14m3OcNfnC9+N+erHB9+RUIMPINReL78VePP228JIy+sOb1l+wYj56scH35lQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAEJRQAwAISqgBAAQl1AAAghJqAABBCTUAgKCEGgBAUEINACAooQYAENQl1AAAiOZvx/8PICEUJJ6BTXYAAAAASUVORK5CYII=)

![](https://massgrave.dev/assets/images/MAS_change_windows_edition-15e8744192e2657d2992dcb87d5f176e.png)

![](data:image/png;base64,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)

![](https://massgrave.dev/assets/images/MAS_change_office_edition_2-f9295062b4cbeacaa3f4c53d1aaa829e.png)

![](https://massgrave.dev/assets/images/MAS_change_office_edition_3-fe4f58a845f6352a3e354afab9ee0a7e.png)

* * *

Made with Love ❤️

[Edit this page](https://github.com/massgravel/massgrave.dev/tree/main/docs/intro.md)

  

本文转自 [https://massgrave.dev/#method-2---traditional-windows-vista-and-later](https://massgrave.dev/#method-2---traditional-windows-vista-and-later)，如有侵权，请联系删除。
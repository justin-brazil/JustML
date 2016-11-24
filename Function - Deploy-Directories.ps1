#####################SCRIPT_CONTROLS##
#!#Name "FUNCTION - Deploy-Directories"
#!#Author "Justin Brazil"
#!#Description "Deploys standardized PoSH Directories to the root of C:\"
#!#Tags "Deploy,Directories,PoSH,PowerShell,Create,Structure,Local,Folders"
#!#Type "Function,Script,Code"
#!#Product "Deploy-Directories,PowerShell"
#!#Modes "Scripting"
#!#Notes "Creates C:\PowerShell structure"
#!#Link "\\qnap\scripting\PowerShell\"
#!#Group "JustML"
#!#Special "Universal"
####################/SCRIPT_CONTROLS##

                                                                                                                        @"
######################################                                                                                 
#                                    #####################################################################################
#    DEPLOY POWERSHELL DIRECTORIES                 #   Optional tagline...
#                                    #####################################################################################
######################################
#UNIVERSAL
#TAGS Directory,Directories,Folder,Folders,Configure,Deploy,Set,Setup,Set up,PowerShell,Local,Create,Item
                                                                                                           

                 Written By: 

                 Justin Brazil          


####   OUTLINE  ###########################################################################################################


        * Creates PowerShell directories on C


      USAGE:   

        * DEPLOY-DIRECTORIES



############################################################################################################################ 
"@        


Function Deploy-Directories {
$FOLDER_ROOT = 'C:\PowerShell\'

$FOLDER_SUBFOLDERS = @(
"AppData"
"Backups"
"Config"
"Logs"
"Results"
"Scheduling"
"Scripts"
"Temp"
"Variables"
)


Write-Host "#####################################" -ForegroundColor Cyan
Write-Host "    DEPLOY POWERSHELL DIRECTORIES    " -ForegroundColor Cyan
Write-Host "#####################################" -ForegroundColor Cyan


if (!(Test-Path -path $FOLDER_ROOT))
    {
        New-Item -ItemType Directory -Path $FOLDER_ROOT
        Write-Host "Created $FOLDER_ROOT Directory" -ForegroundColor Yellow
    }
else 
    {
        Write-Host "PowerShell Root Verified : $FOLDER_ROOT" -ForegroundColor Green
    }

ForEach ($SUBFOLDER in $FOLDER_SUBFOLDERS)

    {
    $TEMP_SUBFOLDER = ($FOLDER_ROOT + $SUBFOLDER)

    if (!(Test-Path $TEMP_SUBFOLDER))
        {
            New-Item -ItemType Directory $TEMP_SUBFOLDER
            Write-Host "Created $TEMP_SUBFOLDER" -ForegroundColor Yellow
        }
    else 
        {
            write-host "Verified $TEMP_SUBFOLDER is present" -ForegroundColor Green
        }
    }
}
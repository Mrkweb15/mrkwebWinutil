
# Step 1: Load PresentationFramework assembly for UI components
Add-Type -AssemblyName PresentationFramework

# Step 2: Define XAML content
$XAML = @"
    <Window 
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="mr. K Winutil" 
        Width="1200" Height="800"
        Background="Black"
        ResizeMode="NoResize">

        <Grid>
            <!-- Row Definitions -->
            <Grid.RowDefinitions>
                <RowDefinition Height="100" />
                <RowDefinition Height="*" />
                <RowDefinition Height="80" />
            </Grid.RowDefinitions>

            <!-- Title Header with Glowing Effect -->
            <Grid Grid.Row="0" Background="#1A1A1A">
                <TextBlock 
                    Text="Developed by mr.K - for your bullst activities"
                    HorizontalAlignment="Center" VerticalAlignment="Center" 
                    FontWeight="Bold" FontSize="24" 
                    Foreground="Red" Opacity="0.9">
                    <TextBlock.Effect>
                        <DropShadowEffect Color="Red" BlurRadius="10" ShadowDepth="0"/>
                    </TextBlock.Effect>
                </TextBlock>
            </Grid>

            <!-- Main Content Area -->
            <Grid Grid.Row="1" Background="#121212">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="250" />
                    <ColumnDefinition Width="*" />
                    <ColumnDefinition Width="300" />
                </Grid.ColumnDefinitions>

                <!-- Utilities Panel -->
                <Border Grid.Column="0" CornerRadius="10" Background="#1F1F1F" Margin="10" BorderBrush="Red" BorderThickness="2">
                    <StackPanel>
                        <TextBlock Text="Utilities" Foreground="Red" FontWeight="Bold" FontSize="18" Margin="10"/>
                        <ListBox x:Name="UtilitiesCheckList" Background="#1F1F1F" Foreground="White" BorderThickness="0">
                            <ListBoxItem><CheckBox Content="Create Restore Point" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Clear DNS Cache" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Run Disk Clean Up" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Delete Temporary Files" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Delete System Logs" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Disable Searchbar" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Enable Searchbar" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Disable Activity History" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Disable Location Tracking" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Disable Teredo" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Disable Hibernation" Foreground="White"/></ListBoxItem>
                            <ListBoxItem><CheckBox Content="Set Display for Performance" Foreground="White"/></ListBoxItem>
                        </ListBox>
                        <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" Margin="10" >
                            <Button x:Name="ClearSelectionButton" Content="Clear Selection" Width="100" Margin="5" Background="Red" Foreground="White"/>
                            <Button x:Name="RunTweaksButton" Content="Run Tweaks" Width="100" Margin="5" Background="Red" Foreground="White"/>
                        </StackPanel>
                    </StackPanel>
                </Border>

                <!-- Applications Panel -->
                <Border Grid.Column="1" CornerRadius="10" Background="#1F1F1F" Margin="10" BorderBrush="Red" BorderThickness="2">
                    <StackPanel>
                        <TextBlock Text="Applications" Foreground="Red" FontWeight="Bold" FontSize="18" Margin="10"/>
						<TextBlock Text="This part is currently under development at the moment" Foreground="White" Margin="5" TextWrapping="Wrap"/>
                        <Grid>
                            <Grid.ColumnDefinitions>
                                <ColumnDefinition Width="*"/>
                                <ColumnDefinition Width="*"/>
                            </Grid.ColumnDefinitions>
                            <ListBox Grid.Column="0" x:Name="AppList1" Background="#1F1F1F" Foreground="White" BorderThickness="0">
                                <ListBoxItem><CheckBox Content="Google Chrome" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Mozilla Firefox" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Microsoft Edge" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Microsoft Office" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="LibreOffice" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="OpenOffice" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="VLC Media Player" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Windows Media Player" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="iTunes" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Skype" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Microsoft Teams" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Slack" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Discord" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Windows Defender (built-in on Windows)" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Avast" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="AVG" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Norton Antivirus" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="McAfee" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="WinRAR" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="7-Zip" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Adobe Acrobat Reader" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Foxit Reader" Foreground="White"/></ListBoxItem> 
                            </ListBox>
                            <ListBox Grid.Column="1" x:Name="AppList2" Background="#1F1F1F" Foreground="White" BorderThickness="0">
                                <!-- Application checklist items continued -->
                                <ListBoxItem><CheckBox Content="Adobe Photoshop" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="GIMP" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Paint.NET" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Adobe Premiere Pro" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="DaVinci Resolve" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Dropbox" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Google Drive" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Microsoft OneDrive" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Visual Studio Code" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Sublime Text" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Atom" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Git" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="CCleaner" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="Evernote" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="TeamViewer" Foreground="White"/></ListBoxItem> 
                                <ListBoxItem><CheckBox Content="WinZip" Foreground="White"/></ListBoxItem> 
                            </ListBox>
                        </Grid>
                        <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" Margin="10">
                            <Button x:Name="ClearAppSelectionButton" Content="Clear Selection" Width="120" Margin="5" Background="Red" Foreground="White"/>
                            <Button x:Name="InstallUpdateButton" Content="Install/Update" Width="120" Margin="5" Background="Red" Foreground="White"/>
                        </StackPanel>
                    </StackPanel>
                </Border>

                <!-- Uninstall & Activator Panels (separate, equal height) -->
				<StackPanel Grid.Column="2" Margin="10" VerticalAlignment="Stretch" HorizontalAlignment="Stretch" >

					<!-- Top: Uninstall Panel -->
					<Border Background="#1F1F1F" BorderBrush="Red" BorderThickness="2" CornerRadius="10" Margin="0,0,0,10" Height="150">
						<StackPanel>
							<TextBlock Text="Uninstall" Foreground="Red" FontWeight="Bold" FontSize="18" Margin="10"/>
							<ListBox x:Name="UninstallList" Background="#1F1F1F" Foreground="White" BorderThickness="0">
								<ListBoxItem><CheckBox Content="Remove Old Backups" Foreground="White"/></ListBoxItem>
								<ListBoxItem><CheckBox Content="Uninstall Unused Apps" Foreground="White"/></ListBoxItem>
							</ListBox>
							<Button x:Name="UninstallButton" Content="Uninstall Selected" Width="180" Margin="10" Background="Red" Foreground="White" HorizontalAlignment="Center"/>
						</StackPanel>
					</Border>

					<!-- Middle: Activator Panel -->
					<Border Background="#2A2A2A" BorderBrush="Red" BorderThickness="2" CornerRadius="10" Margin="0,0,0,10" Height="150">
						<StackPanel>
							<TextBlock Text="Activators" Foreground="Red" FontWeight="Bold" FontSize="18" Margin="10"/>
							<TextBlock Text="Activator Panel: Run scripts to activate MS Office or Windows." Foreground="White" Margin="5" TextWrapping="Wrap"/>
							<StackPanel Orientation="Horizontal" HorizontalAlignment="Center" Margin="10">
								<Button x:Name="ActivatorButton1" Content="Run Activator 1" Width="120" Margin="5" Background="Red" Foreground="White"/>
								<Button x:Name="ActivatorButton2" Content="Run Activator 2" Width="120" Margin="5" Background="Red" Foreground="White"/>
							</StackPanel>
						</StackPanel>
					</Border>

					<!-- Bottom: EULA Panel -->
					<Border Background="#2A2A2A" BorderBrush="Red" BorderThickness="2" CornerRadius="10" Height="240">
						<StackPanel>
							<TextBlock Text="Important" Foreground="Red" FontWeight="Bold" FontSize="18" Margin="10"/>
							<TextBlock Text="This script is free and open source. You can check the script directly and see exactly what is being executed during runtime. Use it at your own risk the author is not responsible for any errors or issues that may occur while running this script." Foreground="White" Margin="5" TextWrapping="Wrap"/>
							<TextBlock Text="If you use this script or any part of it in your own projects, please credit the original author, Mr. K." Foreground="White" Margin="5" TextWrapping="Wrap"/>
							<TextBlock Text="You can view or download the full script here: github.com/Mrkweb15/mrkwebWinutil" Foreground="White" Margin="5" TextWrapping="Wrap"/>
						</StackPanel>
					</Border>

				</StackPanel>

            </Grid>

            <!-- Footer with Progress Bar -->
            <Grid Grid.Row="2" Background="#1A1A1A">
                <StackPanel Orientation="Horizontal" HorizontalAlignment="Center" VerticalAlignment="Center">
                    <TextBlock x:Name="CurrentTweakName" Text="Progress:" Foreground="White" Margin="10"/>
                    <ProgressBar x:Name="TweaksProgressBar" Width="400" Height="20" Foreground="Red" Background="#121212"/>
                    <TextBlock x:Name="ProgressText" Text="0%" Foreground="White" Margin="10"/>
                </StackPanel>
            </Grid>
        </Grid>
    </Window>
"@

# Step 3: Load XAML content
$UI = [System.Windows.Markup.XamlReader]::Parse($XAML)

# Step 4: Define the function to run tweaks
function RunTweaks {
    param (
        [System.Windows.Window]$UI
    )

    # Retrieve the UtilitiesCheckList from the UI
    $UtilitiesCheckList = $UI.FindName("UtilitiesCheckList")

    # Retrieve the ProgressBar and CurrentTweakName TextBlock
    $ProgressBar = $UI.FindName("TweaksProgressBar")
    $CurrentTweakName = $UI.FindName("CurrentTweakName")

    # Hide the progress bar initially
    $ProgressBar.Visibility = [System.Windows.Visibility]::Hidden

    # Hide the tweak name initially
    $CurrentTweakName.Text = ""

    # Check if $UtilitiesCheckList is null
    if ($UtilitiesCheckList -eq $null) {
        Write-Host "UtilitiesCheckList object is null. Unable to proceed."
        return
    }

    # Display message about starting tweaks
    Write-Host "Running selected tweaks..."

    # Create an array to store selected tweaks
    $selectedTweaks = @()

    # Get total number of selected tweaks
    $totalTweaks = 0
    foreach ($item in $UtilitiesCheckList.Items) {
        $checkBox = $item.Content
        if ($checkBox.IsChecked) {
            $totalTweaks++
        }
    }

    # Set initial progress value
    $progressValue = 0

    # Show the progress bar when tweaks are being executed
    $ProgressBar.Visibility = [System.Windows.Visibility]::Visible

    # Iterate through each item in the checklist
    foreach ($item in $UtilitiesCheckList.Items) {
        $listBoxItem = $item

        # Get the checkbox object from the ListBoxItem's content
        $checkBox = $listBoxItem.Content

        # Check if $checkBox is a CheckBox
        if ($checkBox -is [System.Windows.Controls.CheckBox]) {
            # Check if the checkbox is checked
            if ($checkBox.IsChecked) {
                # Get the name of the tweak
                $selectedTweak = $checkBox.Content

                # Update the current tweak name
                $CurrentTweakName.Text = "Processing: $selectedTweak"

                # Update progress bar value
                $progressValue += (100 / $totalTweaks)
                $ProgressBar.Value = $progressValue
				
				# Update the current tweak name before executing the tweak
				$CurrentTweakName.Text = "Processing: $selectedTweak"

				# Update the UI to reflect changes immediately
				$UI.Dispatcher.Invoke([System.Windows.Threading.DispatcherPriority]::Render, [action]{})

                # Execute the tweak
                switch ($selectedTweak) {
                    "Create Restore Point" { 
                        try {
                            Write-Host "Creating Restore Point..."
                            Checkpoint-Computer -Description "Before tweaks"
                            Write-Host "Restore Point created."
                        } catch {
                            Write-Host "Error creating Restore Point: $_"
                        }
                    }
                    "Clear DNS Cache" { 
                        try {
                            Write-Host "Clearing DNS Cache..."
                            ipconfig /flushdns
                            Start-Process -FilePath "ipconfig.exe" -ArgumentList "/flushdns" -NoNewWindow -Wait > $null 2>&1
                            Write-Host "DNS Cache cleared."
                        } catch {
                            Write-Host "Error clearing DNS Cache: $_"
                        }
                    }
                    "Run Disk Clean Up" { 
                        try {
                            Write-Host "Running Disk Clean Up..."
                            Start-Process -FilePath "cleanmgr.exe" -ArgumentList "/sagerun:1" -NoNewWindow -Wait > $null 2>&1
                            Write-Host "Disk Clean Up completed."
                        } catch {
                            Write-Host "Error running Disk Clean Up: $_"
                        }
                    }
                    "Delete Temporary Files" { 
                        try {
                            Write-Host "Deleting Temporary Files..."
                            Remove-Item -Path "$env:TEMP\*" -Force -Recurse -ErrorAction SilentlyContinue
                            Write-Host "Temporary Files deleted."
                        } catch {
                            Write-Host "Error deleting Temporary Files: $_"
                        }
                    }
                    "Delete System Logs" { 
                        try {
                            Write-Host "Deleting System Logs..."
                            Get-ChildItem -Path "C:\Windows\System32\winevt\Logs" | Remove-Item -Force > $null 2>&1
                            Write-Host "System Logs deleted."
                        } catch {
                            Write-Host "Error deleting System Logs: $_"
                        }
                    }
                    "Disable Searchbar" { 
                        try {
                            Write-Host "Disabling Searchbar..."
                            Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 0
                            Write-Host "Searchbar disabled."
                        } catch {
                            Write-Host "Error disabling Searchbar: $_"
                        }
                    }
                    "Enable Searchbar" { 
                        try {
                            Write-Host "Enabling Searchbar..."
                            Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" -Name "SearchboxTaskbarMode" -Value 1
                            Write-Host "Searchbar enabled."
                        } catch {
                            Write-Host "Error enabling Searchbar: $_"
                        }
                    }
                    "Disable Activity History" { 
                        try {
                            Write-Host "Disabling Activity History..."
                            Clear-EventLog -LogName "Application", "Security", "System" -ErrorAction SilentlyContinue
                            Write-Host "Activity History disabled."
                        } catch {
                            Write-Host "Error disabling Activity History: $_"
                        }
                    }
                    "Disable Location Tracking" { 
                        try {
                            Write-Host "Disabling Location Tracking..."
                            Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\DeviceAccess" -Name "GlobalUserDisabled" -Value 1
                            Write-Host "Location Tracking disabled."
                        } catch {
                            Write-Host "Error disabling Location Tracking: $_"
                        }
                    }
                    "Disable Teredo" { 
                        try {
                            Write-Host "Disabling Teredo..."
                            Disable-NetAdapterBinding -InterfaceDescription "Microsoft Teredo Tunneling Adapter" -ComponentID ms_tcpip6
                            Write-Host "Teredo disabled."
                        } catch {
                            Write-Host "Error disabling Teredo: $_"
                        }
                    }
                    "Disable Hibernation" { 
                        try {
                            Write-Host "Disabling Hibernation..."
                            powercfg -h off
                            Write-Host "Hibernation disabled."
                        } catch {
                            Write-Host "Error disabling Hibernation: $_"
                        }
                    }
                    "Set Display for Performance" { 
                        try {
                            Write-Host "Setting Display for Performance..."
                            Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Control Panel\Desktop" -Name "VisualEffects" -Value 2
                            Write-Host "Display set for Performance."
                        } catch {
                            Write-Host "Error setting Display for Performance: $_"
                        }
                    }
                    default { Write-Host "Unknown tweak: $selectedTweak" }
                }

                # Update the UI to reflect changes immediately
                $UI.Dispatcher.Invoke([System.Windows.Threading.DispatcherPriority]::Render, [action]{})
            }
        }
    }

    # Reset progress bar after all tweaks are completed
	$ProgressBar.Value = 0

	# Hide the progress bar when tweaks are completed
	$ProgressBar.Visibility = [System.Windows.Visibility]::Hidden

	# Hide the tweak name after all tweaks are completed
	$CurrentTweakName.Text = ""

	# Display message about completing tweaks
	Write-Host "Tweaks completed."

	# Show "Tweaks Completed" message for 2 seconds
	$CurrentTweakName.Text = "Tweaks Completed"
	$ProgressBar.Visibility = [System.Windows.Visibility]::Visible
	$ProgressBar.Value = 100

	# Update the UI to reflect changes immediately
	$UI.Dispatcher.Invoke([System.Windows.Threading.DispatcherPriority]::Render, [action]{})
	Start-Sleep -Seconds 2

	# Hide the "Tweaks Completed" message
	$CurrentTweakName.Text = ""
	$ProgressBar.Visibility = [System.Windows.Visibility]::Hidden

}

# Step 5: Assign the function to the Click event of the RunTweaksButton
$RunTweaksButton = $UI.FindName("RunTweaksButton")
$RunTweaksButton.Add_Click({ RunTweaks -UI $UI })

# Step 6: Define the function to clear all selections in the tweaks list
function ClearTweaksSelection {
    # Retrieve the UtilitiesCheckList from the UI
    $UtilitiesCheckList = $UI.FindName("UtilitiesCheckList")

    # Iterate through each item in the checklist and uncheck the CheckBox control
    foreach ($item in $UtilitiesCheckList.Items) {
        $checkBox = $item.Content
        $checkBox.IsChecked = $false
    }
}

# Step 7: Assign the function to the Click event of the Clear Selection Button for tweaks
$ClearSelectionButton = $UI.FindName("ClearSelectionButton")
$ClearSelectionButton.Add_Click({ ClearTweaksSelection })

function ClearAppSelection {
    # Retrieve the appChecklist from the UI
    $appChecklist = $UI.FindName("AppList1")

    # Iterate through each item in the checklist and uncheck the CheckBox control
    foreach ($item in $appChecklist.Items) {
        $checkBox = $item.Content
        $checkBox.IsChecked = $false
    }

    # Retrieve the appChecklist2 from the UI
    $appChecklist2 = $UI.FindName("AppList2")

    # Iterate through each item in the checklist and uncheck the CheckBox control
    foreach ($item in $appChecklist2.Items) {
        $checkBox = $item.Content
        $checkBox.IsChecked = $false
    }
}

# Step 9: Assign the function to the Click event of the Clear Selection Button for the application list
$ClearAppSelectionButton = $UI.FindName("ClearAppSelectionButton")
$ClearAppSelectionButton.Add_Click({ ClearAppSelection })



# Define the function to install/update selected applications
function InstallOrUpdateApps {
    # Define the directory for storing downloaded files
    $downloadDirectory = "C:\Temp\AppDownloads"

    # Check if the download directory exists, if not, create it
    if (-not (Test-Path $downloadDirectory)) {
        try {
            New-Item -ItemType Directory -Path $downloadDirectory -Force | Out-Null
            Write-Host "Download directory created: $downloadDirectory"
        } catch {
            Write-Host "Failed to create download directory: $_"
            return
        }
    }

    # Define URLs for each application
    $appUrls = @{
        "Google Chrome" = "https://www.google.com/chrome/"
        "Mozilla Firefox" = "https://www.mozilla.org/en-US/firefox/new/"
        "Microsoft Edge" = "https://www.microsoft.com/en-us/edge"
        "Microsoft Office (Word, Excel, PowerPoint, Outlook)" = "https://www.microsoft.com/en-us/microsoft-365"
        "LibreOffice" = "https://www.libreoffice.org/download/download/"
        "OpenOffice" = "https://www.openoffice.org/download/"
        "VLC Media Player" = "https://www.videolan.org/vlc/"
        "Windows Media Player" = "" # Windows Media Player typically comes pre-installed
        "iTunes" = "https://www.apple.com/itunes/download/"
        "Skype" = "https://www.skype.com/en/get-skype/"
        "Microsoft Teams" = "https://www.microsoft.com/en-us/microsoft-teams/download-app"
        "Slack" = "https://slack.com/downloads/windows"
        "Discord" = "https://discord.com/download"
        "Windows Defender (built-in on Windows)" = "" # Windows Defender is built into Windows
        "Avast" = "https://www.avast.com/en-us/free-antivirus-download"
        "AVG" = "https://www.avg.com/en-us/free-antivirus-download"
        "Norton Antivirus" = "https://us.norton.com/products?inid=hho_nortoncom_home_topnav_products"
        "McAfee" = "https://www.mcafee.com/en-us/antivirus.html"
        "WinRAR" = "https://www.win-rar.com/start.html?&L=0"
        "7-Zip" = "https://www.7-zip.org/"
        "Adobe Acrobat Reader" = "https://get.adobe.com/reader/"
        "Foxit Reader" = "https://www.foxitsoftware.com/downloads/"
        "Adobe Photoshop" = "https://www.adobe.com/products/photoshop.html"
        "GIMP" = "https://www.gimp.org/downloads/"
        "Paint.NET" = "https://www.getpaint.net/download.html"
        "Adobe Premiere Pro" = "https://www.adobe.com/products/premiere.html"
        "DaVinci Resolve" = "https://www.blackmagicdesign.com/products/davinciresolve/"
        "Dropbox" = "https://www.dropbox.com/install"
        "Google Drive" = "https://www.google.com/drive/download/"
        "Microsoft OneDrive" = "https://www.microsoft.com/en-us/microsoft-365/onedrive/online-cloud-storage"
        "Visual Studio Code" = "https://code.visualstudio.com/download"
        "Sublime Text" = "https://www.sublimetext.com/download"
        "Atom" = "https://atom.io/"
        "Git" = "https://git-scm.com/downloads"
        "CCleaner" = "https://www.ccleaner.com/ccleaner/download"
        "Evernote" = "https://evernote.com/download"
        "TeamViewer" = "https://www.teamviewer.com/en/download/windows/"
        "WinZip" = "https://www.winzip.com/win/en/index.htm"
    }

     # Retrieve the appChecklist and appChecklist2 from the UI
    $appChecklist = $UI.FindName("appChecklist")
    $appChecklist2 = $UI.FindName("appChecklist2")

    # Create an array to store selected applications
    $selectedApps = @()

    # Iterate through each item in the first checklist
    foreach ($item in $appChecklist.Items) {
        $checkBox = $item.Content
        if ($checkBox.IsChecked) {
            # Add the application name to the selectedApps array
            $selectedApps += $checkBox.Content
        }
    }

    # Iterate through each item in the second checklist
    foreach ($item in $appChecklist2.Items) {
        $checkBox = $item.Content
        if ($checkBox.IsChecked) {
            # Add the application name to the selectedApps array
            $selectedApps += $checkBox.Content
        }
    }

    # If there are selected applications, proceed with installation/update
    if ($selectedApps.Count -gt 0) {
        foreach ($app in $selectedApps) {
            # Check if the application URL is defined
            if ($appUrls.ContainsKey($app)) {
                # Get the URL for the application
                $appUrl = $appUrls[$app]

                # Perform the installation/update action for the selected application
                if ($appUrl -ne "") {
                    # Extract the filename from the URL
                    $fileName = [System.IO.Path]::GetFileName($appUrl)
                    # Combine the download directory and filename to create the full download path
                    $downloadPath = Join-Path -Path $downloadDirectory -ChildPath $fileName
                    Write-Host "Downloading and installing/updating: $app"
                    Write-Host "URL: $appUrl"
                    Write-Host "Download Path: $downloadPath"
                    # Download the application
                    try {
                        Invoke-WebRequest -Uri $appUrl -OutFile $downloadPath -ErrorAction Stop
                        Write-Host "$app downloaded successfully."
                    } catch {
                        Write-Host "Failed to download $app. Error: $_"
                        continue
                    }
                    # Install the application
                    if (Test-Path $downloadPath) {
                        Start-Sleep -Seconds 5 # Add a delay to ensure the installer file is fully downloaded
                        try {
                            Start-Process -FilePath $downloadPath -ArgumentList "/S" -Wait -ErrorAction Stop
                            Write-Host "$app installed/updated successfully."
                        } catch {
                            Write-Host "Failed to install $app. Error: $_"
                        }
                    } else {
                        Write-Host "Failed to download $app."
                    }
                } else {
                    Write-Host "URL for $app is not defined."
                }
            }
        }
    } else {
        # Display message if no applications are selected
        [System.Windows.MessageBox]::Show("No applications selected for Install/Update.", "Information", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    }
}


# Step 11: Assign the function to the Click event of the Install/Update Button
$InstallUpdateButton = $UI.FindName("InstallUpdateButton")
$InstallUpdateButton.Add_Click({ InstallOrUpdateApps })

# Function to run tweaks with elevated privileges
function RunTweaksWithElevation {
    # Start a new process with elevated privileges without opening a new window
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -NoNewWindow -Command `"& { & '.\mrkproject.ps1' RunTweaks }`"" -Verb RunAs
}

# Assign the function to the Click event of the RunTweaksButton
$RunTweaksButton.Add_Click({ RunTweaksWithElevation })

# Function to install/update apps with elevated privileges
function InstallOrUpdateAppsWithElevation {
    # Start a new process with elevated privileges without opening a new window
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -NoNewWindow -Command `"& { & '.\mrkproject.ps1' InstallOrUpdateApps }`"" -Verb RunAs
}

# Assign the function to the Click event of the Install/Update Button
$InstallUpdateButton.Add_Click({ InstallOrUpdateAppsWithElevation })



# Function to run tweaks with elevated privileges
function RunTweaksWithElevation {
    try {
        # Start a new process with elevated privileges
        Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"& { & '.\mrkproject.ps1' RunTweaks }`"" -Verb RunAs
    } catch {
        Write-Host "An error occurred while running tweaks: $_"
        Write-Host "Please check the script and try again."
    }
}

# Function to install/update apps with elevated privileges
function InstallOrUpdateAppsWithElevation {
    try {
        # Start a new process with elevated privileges
        Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"& { & '.\mrkproject.ps1' InstallOrUpdateApps }`"" -Verb RunAs
    } catch {
        Write-Host "An error occurred while installing/updating apps: $_"
        Write-Host "Please check the script and try again."
    }
}

# URLs to your GitHub raw .cmd files
$Activator1Url = "https://raw.githubusercontent.com/Mrkweb15/mrkwebWinutil/main/Activate.cmd"
$Activator2Url = "https://raw.githubusercontent.com/Mrkweb15/mrkwebWinutil/main/windows_activator.cmd"

# Function to download and run a .cmd file
function RunActivatorFromGitHub {
    param (
        [string]$url,
        [string]$fileName
    )

    # Save to temporary folder
    $tempPath = Join-Path -Path $env:TEMP -ChildPath $fileName

    try {
        Invoke-WebRequest -Uri $url -OutFile $tempPath -UseBasicParsing
        Start-Process -FilePath $tempPath -WorkingDirectory $env:TEMP -Wait
        [System.Windows.MessageBox]::Show("$fileName executed.", "Info", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Information)
    } catch {
        [System.Windows.MessageBox]::Show("Failed to run $fileName.`n$($_.Exception.Message)", "Error", [System.Windows.MessageBoxButton]::OK, [System.Windows.MessageBoxImage]::Error)
    }
}

# Button click functions
function RunActivatorScript1 { RunActivatorFromGitHub -url $Activator1Url -fileName "Activate.cmd" }
function RunActivatorScript2 { RunActivatorFromGitHub -url $Activator2Url -fileName "windows_activator.cmd" }

# Wire buttons
$ActivatorButton1 = $UI.FindName("ActivatorButton1")
$ActivatorButton1.Add_Click({ RunActivatorScript1 })

$ActivatorButton2 = $UI.FindName("ActivatorButton2")
$ActivatorButton2.Add_Click({ RunActivatorScript2 })


$UI.ShowDialog() | Out-Null

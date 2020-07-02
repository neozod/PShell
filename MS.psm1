function anydesk(){
    param($string)
    Start-Process "E:\code\CODE\bginfo\anydesk\AnyDesk_$String.msi" -ArgumentList '/quiet' -Wait

}

function Write-ProgressHelper {
	param (
		[int]$StepNumber,
		[string]$Message,
        [string]$Title
	)

	Write-Progress -Activity $Title -Status $Message -PercentComplete (($StepNumber / $steps) * 100)
}


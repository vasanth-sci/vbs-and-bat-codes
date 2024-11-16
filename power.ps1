# Ensure the Windows Forms assembly is loaded
Add-Type -AssemblyName System.Windows.Forms

# Display the message box and store the result
$result = [System.Windows.Forms.MessageBox]::Show("Open the file in volume D", "Open File", [System.Windows.Forms.MessageBoxButtons]::OKCancel)

# Check if the OK button was clicked
if ($result -eq [System.Windows.Forms.DialogResult]::OK) {
    # Open the PDF file (adjust path as necessary)
    Start-Process "D:\study materials\books\Goldstein.pdf"
    
    # Open the URL in the default web browser
    Start-Process "https://chatgpt.com/?oai-dm=1"
}

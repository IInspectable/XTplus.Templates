#region Using Directives

using System.Collections.Generic;
using EnvDTE;
using Microsoft.VisualStudio.TemplateWizard;

#endregion

namespace XTplus.Templates.Extension.Wizards.TestProject {
    public class Wizard : IWizard {

        // This method is called before opening any item that   
        // has the OpenInEditor attribute.  
        public void BeforeOpeningFile(ProjectItem projectItem) {
        }

        public void ProjectFinishedGenerating(Project project) {
        }

        // This method is only called for item templates,  
        // not for project templates.  
        public void ProjectItemFinishedGenerating(ProjectItem
            projectItem) {
        }

        // This method is called after the project is created.  
        public void RunFinished() {
        }

        public void RunStarted(object automationObject, Dictionary<string, string> replacementsDictionary, WizardRunKind runKind, object[] customParams) {
            
            // Display a form to the user. The form collects   
            // input for the custom message.  
            var projectWizard = new MyProjectWizard();
            if (projectWizard.ShowModal() != true) {
                throw new WizardBackoutException();
            }

            var customMessage = projectWizard.CustomMessage.Text;

            // Add custom parameters.  
            replacementsDictionary.Add("$custommessage$", customMessage);
            
        }

        // This method is only called for item templates,  
        // not for project templates.  
        public bool ShouldAddProjectItem(string filePath) {
            return true;
        }
    }
}

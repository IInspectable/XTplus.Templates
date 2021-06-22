#region Using Directives

using System.Collections.Generic;
using EnvDTE;
using Microsoft.VisualStudio.TemplateWizard;

#endregion

namespace XTplus.Templates.Extension.Wizards.Task {
    public class Wizard : IWizard {


        const string InitParamsTemplateFileName = "InitParams.cs.txt";
        const string ResultTemplateFileName     = "Result.cs.txt";
        const string TaskStateTemplateFileName  = "TaskState.cs.txt";

        const string WfsBaseTypeKey  = "$WfsBaseType$";
        const string InitParamsKey   = "$InitParams$";
        const string ResultTypeKey   = "$ResultType$";
        const string SafeItemNameKey = "$safeitemname$";

        bool _generateTaskState;
        bool _generateInitParams;
        bool _generateResult;

        public Wizard() {
            _generateTaskState = true;
            _generateInitParams = true;
            _generateResult = true;
        }

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
            var dialog = new OptionsDialog {
                GenerateInitParams = {IsChecked = _generateInitParams},
                GenerateTaskState  = {IsChecked = _generateTaskState},
                GenerateResult     = {IsChecked = _generateResult}
            };
            
            if (dialog.ShowModal() != true) {
                throw new WizardBackoutException();
            }

            _generateInitParams = dialog.GenerateInitParams.IsChecked == true;
            _generateTaskState  = dialog.GenerateTaskState.IsChecked  == true;
            _generateResult     = dialog.GenerateResult.IsChecked     == true;

            var safeItemName = replacementsDictionary[SafeItemNameKey];
            if (_generateInitParams) {
                replacementsDictionary[InitParamsKey] = $"{safeItemName}InitParams initParams";
            } else {
                replacementsDictionary[InitParamsKey] = "";
            }

            if (_generateResult) {
                replacementsDictionary[ResultTypeKey] = $"{safeItemName}Result";
            }
            else {
                replacementsDictionary[ResultTypeKey] = "bool";
            }

            if (_generateTaskState) {
                replacementsDictionary[WfsBaseTypeKey] = $"StandardWFS<{safeItemName}TS>";
            }
            else {
                replacementsDictionary[WfsBaseTypeKey] = "StandardWFS";
            }
        }


        // This method is only called for item templates,  
        // not for project templates.  
        public bool ShouldAddProjectItem(string filePath) {

            if (filePath == InitParamsTemplateFileName) {
                return _generateInitParams;
            }

            if (filePath == ResultTemplateFileName) {
                return _generateResult;
            }

            if (filePath == TaskStateTemplateFileName) {
                return _generateTaskState;
            }

            return true;
        }
    }
}
